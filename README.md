# elm-html-string [![Build Status](https://travis-ci.org/zwilias/elm-html-string.svg)](https://travis-ci.org/zwilias/elm-html-string)
> Write code resembling elm/html and elm/svg and serialize to either a string or actual
HTML or SVG

This package copies the entire API of `elm/html` and `elm/svg`, but adds 4 functions:

- `Html.String.toHtml` which serializes the resulting `Html.String.Html msg` node into a
`Html.Html msg` node
- `Html.String.toString` which serializes the Html node into a `String` with optional indentation
- `Svg.String.toSvg` which serializes the resulting `Svg.String.Svg msg` node into a
`Svg.Svg msg` node
- `Svg.String.toString` which serializes the Svg node into a `String` with optional indentation

Two caveats:

- You need to change your imports
- It can't properly support `lazy` nodes since those can't be expressed in Elm

## Show me an example!

```elm
import Html.String as Html exposing (Html)
import Html.String.Attributes as Attr
import Html.String.Events as Events


type Msg = Increment | Decrement


counter : Int -> Html Msg
counter count =
    Html.div
        [ Attr.classList [ ( "below-zero" = count < 0 ), ( "counter" = True ) ] ]
        [ Html.button [ Events.onClick Decrement ] [ Html.text "-" ]
        , Html.text <| toString count
        , Html.button [ Events.onClick Increment ] [ Html.text "+" ]
        ]

counterAsString : String
counterAsString =
    Html.toString 2 <| counter -5

{- Expected output:

    <div class="below-zero counter">
      <button>
        -
      </button>
      -5
      <button>
        +
      </button>
    </div>
-}
```

## Cool, anything else I should be aware of?

Yes.

- Event handlers are removed from the output.
- Void elements ignore children (`br`, `img`, etc.)
- Boolean properties are stripped from the output when `False`, and added as
boolean properties when `True`. I.e. `selected True` will result in
`<someNode selected>`.

## Alright, coolbeans

Made with ❤️ and licensed under BSD-3. Fork me and send me some pull-requests!
