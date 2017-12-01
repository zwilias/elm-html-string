module Html.Types exposing (..)

import Char
import Html
import Html.Attributes
import Html.Events
import Html.Keyed
import Json.Decode exposing (Decoder, Value)
import Json.Encode as Encode


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
        Node tag attrs children ->
            Node tag (List.map (mapAttribute f) attrs) (mapChildren f children)

        TextNode content ->
            TextNode content


type Attribute msg
    = Attribute String String
    | StringProperty String String
    | BoolProperty String Bool
    | ValueProperty String Value
    | Style (List ( String, String ))
    | Event String { preventDefault : Bool, stopPropagation : Bool } (Decoder msg)


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

        Style styles ->
            Style styles

        Event name options msgDecoder ->
            Event name options (Json.Decode.map f msgDecoder)


toHtml : Html msg -> Html.Html msg
toHtml node =
    case node of
        Node tag attributes children ->
            case children of
                NoChildren ->
                    Html.node tag (List.map attributeToHtml attributes) []

                Regular nodes ->
                    Html.node tag (List.map attributeToHtml attributes) (List.map toHtml nodes)

                Keyed keyedNodes ->
                    Html.Keyed.node tag (List.map attributeToHtml attributes) (List.map (Tuple.mapSecond toHtml) keyedNodes)

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

        Style styles ->
            Html.Attributes.style styles

        Event name options decoder ->
            Html.Events.onWithOptions name options decoder


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
    toStringHelper indenter [ html ] initialAcc |> .result |> String.join joinString


type alias Indenter =
    Int -> String -> String


type alias Acc msg =
    { depth : Int, stack : List (TagInfo msg), result : List String }


type alias TagInfo msg =
    ( String, List (Attribute msg), List (Html msg) )


rmap : (a -> b) -> List a -> List b
rmap f xs =
    List.foldl (\x acc -> f x :: acc) [] xs


toStringHelper : Indenter -> List (Html msg) -> Acc msg -> Acc msg
toStringHelper indenter tags acc =
    case tags of
        [] ->
            case acc.stack of
                [] ->
                    acc

                ( tagName, attributes, cont ) :: rest ->
                    { acc
                        | result = indenter (acc.depth - 1) (tag tagName attributes) :: acc.result
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
                        | result = indenter acc.depth (closingTag tagName) :: acc.result
                        , depth = acc.depth + 1
                        , stack = ( tagName, attributes, rest ) :: acc.stack
                    }
                        |> toStringHelper indenter (List.reverse childNodes)

                Keyed childNodes ->
                    { acc
                        | result = indenter acc.depth (closingTag tagName) :: acc.result
                        , depth = acc.depth + 1
                        , stack = ( tagName, attributes, rest ) :: acc.stack
                    }
                        |> toStringHelper indenter (rmap Tuple.second childNodes)

        (TextNode string) :: rest ->
            { acc | result = indenter acc.depth string :: acc.result }
                |> toStringHelper indenter rest


tag : String -> List (Attribute msg) -> String
tag tagName attributes =
    "<" ++ String.join " " (tagName :: List.filterMap attributeToString attributes) ++ ">"


attributeToString : Attribute msg -> Maybe String
attributeToString attribute =
    let
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

        build : String -> String -> String
        build key value =
            hyphenate key ++ "=\"" ++ escape value ++ "\""
    in
    case attribute of
        Attribute key value ->
            Just <| build key value

        StringProperty string value ->
            Just <| build (propName string) value

        BoolProperty string enabled ->
            if enabled then
                Just <| hyphenate <| propName string
            else
                Nothing

        ValueProperty string value ->
            Just <| build (propName string) (Basics.toString value)

        Style styles ->
            Just <| "style=\"" ++ String.join "; " (List.map (\( key, value ) -> key ++ ": " ++ value) styles) ++ "\""

        Event string record msgDecoder ->
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
indent perLevel level =
    (++) <| String.repeat (perLevel * level) " "
