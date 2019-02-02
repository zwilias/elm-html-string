module Tests exposing
    ( attributes
    , classList
    , classes
    , eventsAreStripped
    , indentedOutput
    , nestedIndentation
    , styles
    , testCases
    )

import Expect exposing (Expectation)
import Html.String as Html exposing (Html)
import Html.String.Attributes as Attr
import Html.String.Events as Events
import Test exposing (..)


cases : List ( Html msg, String )
cases =
    [ ( Html.text "hello!", "hello!" )
    , ( Html.span [] [ Html.text "spanned" ], "<span>spanned</span>" )
    , ( Html.div []
            [ Html.text "before"
            , Html.br [] []
            , Html.text "after"
            ]
      , "<div>before<br>after</div>"
      )
    ]


testCase : Html msg -> String -> Test
testCase html expected =
    test expected <|
        \_ ->
            html
                |> Html.toString 0
                |> Expect.equal expected


testCases : Test
testCases =
    describe "simple cases" <| List.map (\( input, output ) -> testCase input output) cases


indentedOutput : Test
indentedOutput =
    test "setting indent adds newlines and adds indentation" <|
        \_ ->
            Html.div [] [ Html.text "Hello world!" ]
                |> Html.toString 2
                |> Expect.equal "<div>\n  Hello world!\n</div>"


eventsAreStripped : Test
eventsAreStripped =
    test "if there are eventshandler attached, remove them from the markup" <|
        \_ ->
            Html.button [ Events.onClick 0 ] []
                |> Html.toString 0
                |> Expect.equal "<button></button>"


attributes : Test
attributes =
    test "attributes are rendered as key-value pairs" <|
        \_ ->
            Html.input [ Attr.value "hello", Attr.placeholder "hold my place" ] []
                |> Html.toString 0
                |> Expect.equal "<input placeholder=\"hold my place\" value=\"hello\">"


classes : Test
classes =
    test "multiple calls to `class` get joined together" <|
        \_ ->
            Html.span
                [ Attr.class "class-1"
                , Attr.class "class-2"
                ]
                []
                |> Html.toString 0
                |> Expect.equal "<span class=\"class-1 class-2\"></span>"


styles : Test
styles =
    test "styles are serialized to proper css. Sorta." <|
        \_ ->
            Html.span
                [ Attr.style "line-height" "12px"
                , Attr.style "color" "black"
                ]
                []
                |> Html.toString 0
                |> Expect.equal "<span style=\"line-height: 12px; color: black\"></span>"


classList : Test
classList =
    test "classList is converted to a `class`" <|
        \_ ->
            Html.span
                [ Attr.classList
                    [ ( "foo", True )
                    , ( "bar", False )
                    , ( "et-cetera", True )
                    ]
                ]
                []
                |> Html.toString 0
                |> Expect.equal "<span class=\"foo et-cetera\"></span>"


nestedIndentation : Test
nestedIndentation =
    test "nested things stack indentation" <|
        \_ ->
            Html.div [] [ Html.span [] [ Html.text "hi!" ] ]
                |> Html.toString 2
                |> Expect.equal "<div>\n  <span>\n    hi!\n  </span>\n</div>"
