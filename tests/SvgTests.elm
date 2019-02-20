module SvgTests exposing
    ( attributes
    , classes
    , eventsAreStripped
    , indentedOutput
    , nestedIndentation
    , styles
    , testCases
    )

import Expect exposing (Expectation)
import Html.String as Html exposing (Html)
import Html.String.Attributes exposing (style)
import Svg.String as Svg exposing (Svg)
import Svg.String.Attributes as Attr
import Svg.String.Events as Events
import Test exposing (..)


cases : List ( Svg msg, String )
cases =
    [ ( Svg.text "hello!", "hello!" )
    , ( Svg.g [] [ Svg.text "grouped" ], "<g>grouped</g>" )
    , ( Svg.foreignObject []
            [ Html.text "before"
            , Html.br [] []
            , Html.text "after"
            ]
      , "<foreignObject>before<br>after</foreignObject>"
      )
    , ( Svg.svg [ Attr.viewBox "0 0 20 25" ] [ Svg.g [] [] ]
      , "<svg viewBox=\"0 0 20 25\"><g></g></svg>"
      )
    ]


testCase : Svg msg -> String -> Test
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
            Svg.g [] [ Svg.path [ Attr.d "0 0" ] [] ]
                |> Svg.toString 2
                |> Expect.equal "<g>\n  <path d=\"0 0\">\n  </path>\n</g>"


eventsAreStripped : Test
eventsAreStripped =
    test "if there are eventshandler attached, remove them from the markup" <|
        \_ ->
            Svg.circle [ Events.onClick 0 ] []
                |> Svg.toString 0
                |> Expect.equal "<circle></circle>"


attributes : Test
attributes =
    test "attributes are rendered as key-value pairs" <|
        \_ ->
            Svg.circle [ Attr.cx "60", Attr.cy "60", Attr.r "25" ] []
                |> Svg.toString 0
                |> Expect.equal "<circle r=\"25\" cy=\"60\" cx=\"60\"></circle>"


classes : Test
classes =
    test "multiple calls to `class` get joined together" <|
        \_ ->
            Svg.circle
                [ Attr.class "class-1"
                , Attr.class "class-2"
                ]
                []
                |> Svg.toString 0
                |> Expect.equal "<circle class=\"class-1 class-2\"></circle>"


styles : Test
styles =
    test "styles are serialized to proper css. Sorta." <|
        \_ ->
            Svg.rect
                [ style "line-height" "12px"
                , style "fill" "black"
                ]
                []
                |> Svg.toString 0
                |> Expect.equal "<rect style=\"line-height: 12px; fill: black\"></rect>"


nestedIndentation : Test
nestedIndentation =
    test "nested things stack indentation" <|
        \_ ->
            Svg.defs [] [ Svg.g [] [ Svg.rect [] [] ] ]
                |> Svg.toString 2
                |> Expect.equal "<defs>\n  <g>\n    <rect>\n    </rect>\n  </g>\n</defs>"
