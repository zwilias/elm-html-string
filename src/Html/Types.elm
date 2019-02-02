module Html.Types exposing
    ( Attribute(..)
    , Children(..)
    , EventDecoder(..)
    , Html(..)
    , map
    , mapAttribute
    , toHtml
    , toString
    )

import Char
import Html
import Html.Attributes
import Html.Events
import Html.Keyed
import Json.Decode as Decode exposing (Decoder, Value)
import Json.Encode as Encode
import String.Conversions


type Children msg
    = NoChildren
    | Regular (List (Html msg))
    | Keyed (List ( String, Html msg ))


mapChildren : (a -> b) -> Children a -> Children b
mapChildren f children =
    case children of
        NoChildren ->
            NoChildren

        Regular nodes ->
            Regular (List.map (map f) nodes)

        Keyed keyedNodes ->
            Keyed (List.map (Tuple.mapSecond <| map f) keyedNodes)


type Html msg
    = Node String (List (Attribute msg)) (Children msg)
    | TextNode String


map : (a -> b) -> Html a -> Html b
map f node =
    case node of
        Node tagName attrs children ->
            Node tagName (List.map (mapAttribute f) attrs) (mapChildren f children)

        TextNode content ->
            TextNode content


type Attribute msg
    = Attribute String String
    | StringProperty String String
    | BoolProperty String Bool
    | ValueProperty String Value
    | Style String String
    | Event String (EventDecoder msg)


type EventDecoder msg
    = Normal (Decoder msg)
    | MayStopPropagation (Decoder ( msg, Bool ))
    | MayPreventDefault (Decoder ( msg, Bool ))
    | Custom (Decoder { message : msg, stopPropagation : Bool, preventDefault : Bool })


mapAttribute : (a -> b) -> Attribute a -> Attribute b
mapAttribute f attribute =
    case attribute of
        Attribute key value ->
            Attribute key value

        StringProperty key value ->
            StringProperty key value

        BoolProperty key value ->
            BoolProperty key value

        ValueProperty key value ->
            ValueProperty key value

        Style key value ->
            Style key value

        Event name eventDecoder ->
            Event name (mapEventDecoder f eventDecoder)


mapEventDecoder : (a -> b) -> EventDecoder a -> EventDecoder b
mapEventDecoder f eventDecoder =
    case eventDecoder of
        Normal d ->
            Normal (Decode.map f d)

        MayStopPropagation d ->
            MayStopPropagation (Decode.map (Tuple.mapFirst f) d)

        MayPreventDefault d ->
            MayPreventDefault (Decode.map (Tuple.mapFirst f) d)

        Custom d ->
            Custom
                (Decode.map
                    (\v ->
                        { message = f v.message
                        , stopPropagation = v.stopPropagation
                        , preventDefault = v.preventDefault
                        }
                    )
                    d
                )


toHtml : Html msg -> Html.Html msg
toHtml node =
    case node of
        Node tagName attributes children ->
            case children of
                NoChildren ->
                    Html.node tagName (List.map attributeToHtml attributes) []

                Regular nodes ->
                    Html.node tagName (List.map attributeToHtml attributes) (List.map toHtml nodes)

                Keyed keyedNodes ->
                    Html.Keyed.node tagName (List.map attributeToHtml attributes) (List.map (Tuple.mapSecond toHtml) keyedNodes)

        TextNode content ->
            Html.text content


attributeToHtml : Attribute msg -> Html.Attribute msg
attributeToHtml attribute =
    case attribute of
        Attribute key value ->
            Html.Attributes.attribute key value

        StringProperty key value ->
            Html.Attributes.property key (Encode.string value)

        BoolProperty key value ->
            Html.Attributes.property key (Encode.bool value)

        ValueProperty key value ->
            Html.Attributes.property key value

        Style key value ->
            Html.Attributes.style key value

        Event name (Normal d) ->
            Html.Events.on name d

        Event name (MayStopPropagation d) ->
            Html.Events.stopPropagationOn name d

        Event name (MayPreventDefault d) ->
            Html.Events.preventDefaultOn name d

        Event name (Custom d) ->
            Html.Events.custom name d


toString : Int -> Html msg -> String
toString depth html =
    let
        indenter : Indenter
        indenter =
            case depth of
                0 ->
                    always identity

                _ ->
                    indent depth

        joinString : String
        joinString =
            case depth of
                0 ->
                    ""

                _ ->
                    "\n"

        initialAcc : Acc msg
        initialAcc =
            { depth = 0
            , stack = []
            , result = []
            }
    in
    toStringHelper indenter [ html ] initialAcc
        |> .result
        |> join joinString


join : String -> List String -> String
join between list =
    case list of
        [] ->
            ""

        [ x ] ->
            x

        x :: xs ->
            List.foldl (\y acc -> y ++ between ++ acc) x xs


type alias Indenter =
    Int -> String -> String


type alias Acc msg =
    { depth : Int
    , stack : List (TagInfo msg)
    , result : List String
    }


type alias TagInfo msg =
    ( String, List (Html msg) )


toStringHelper : Indenter -> List (Html msg) -> Acc msg -> Acc msg
toStringHelper indenter tags acc =
    case tags of
        [] ->
            case acc.stack of
                [] ->
                    acc

                ( tagName, cont ) :: rest ->
                    { acc
                        | result = indenter (acc.depth - 1) (closingTag tagName) :: acc.result
                        , depth = acc.depth - 1
                        , stack = rest
                    }
                        |> toStringHelper indenter cont

        (Node tagName attributes children) :: rest ->
            case children of
                NoChildren ->
                    { acc | result = indenter acc.depth (tag tagName attributes) :: acc.result }
                        |> toStringHelper indenter rest

                Regular childNodes ->
                    { acc
                        | result = indenter acc.depth (tag tagName attributes) :: acc.result
                        , depth = acc.depth + 1
                        , stack = ( tagName, rest ) :: acc.stack
                    }
                        |> toStringHelper indenter childNodes

                Keyed childNodes ->
                    { acc
                        | result = indenter acc.depth (tag tagName attributes) :: acc.result
                        , depth = acc.depth + 1
                        , stack = ( tagName, rest ) :: acc.stack
                    }
                        |> toStringHelper indenter (List.map Tuple.second childNodes)

        (TextNode string) :: rest ->
            { acc | result = indenter acc.depth string :: acc.result }
                |> toStringHelper indenter rest


tag : String -> List (Attribute msg) -> String
tag tagName attributes =
    "<" ++ String.join " " (tagName :: List.filterMap attributeToString attributes) ++ ">"


propName : String -> String
propName prop =
    case prop of
        "className" ->
            "class"

        "defaultValue" ->
            "value"

        "htmlFor" ->
            "for"

        _ ->
            prop


buildProp : String -> String -> String
buildProp key value =
    hyphenate key ++ "=\"" ++ escape value ++ "\""


attributeToString : Attribute msg -> Maybe String
attributeToString attribute =
    case attribute of
        Attribute key value ->
            Just <| buildProp key value

        StringProperty string value ->
            Just <| buildProp (propName string) value

        BoolProperty string enabled ->
            if enabled then
                Just <| hyphenate <| propName string

            else
                Nothing

        ValueProperty string value ->
            Just <| buildProp (propName string) (String.Conversions.fromValue value)

        Style key value ->
            Just <| "style=\"" ++ key ++ ": " ++ value ++ ";\""

        Event _ _ ->
            Nothing


escape : String -> String
escape =
    String.foldl
        (\char acc ->
            if char == '"' then
                acc ++ "\\\""

            else
                acc ++ String.fromChar char
        )
        ""


hyphenate : String -> String
hyphenate =
    String.foldl
        (\char acc ->
            if Char.isUpper char then
                acc ++ "-" ++ String.fromChar (Char.toLower char)

            else
                acc ++ String.fromChar char
        )
        ""


closingTag : String -> String
closingTag tagName =
    "</" ++ tagName ++ ">"


indent : Int -> Int -> String -> String
indent perLevel level x =
    String.repeat (perLevel * level) " " ++ x
