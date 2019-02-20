module Svg.String.Events exposing
    ( onClick, onMouseDown, onMouseUp, onMouseOver, onMouseOut
    , on, stopPropagationOn, preventDefaultOn, custom
    )

{-|


# Mouse

@docs onClick, onMouseDown, onMouseUp, onMouseOver, onMouseOut


# Custom

@docs on, stopPropagationOn, preventDefaultOn, custom

-}

import Json.Decode as Json
import Svg.String exposing (Attribute)
import VirtualDom.Types



-- MOUSE


{-| -}
onClick : msg -> Attribute msg
onClick msg =
    on "click" (Json.succeed msg)


{-| -}
onMouseDown : msg -> Attribute msg
onMouseDown msg =
    on "mousedown" (Json.succeed msg)


{-| -}
onMouseUp : msg -> Attribute msg
onMouseUp msg =
    on "mouseup" (Json.succeed msg)


{-| -}
onMouseOver : msg -> Attribute msg
onMouseOver msg =
    on "mouseover" (Json.succeed msg)


{-| -}
onMouseOut : msg -> Attribute msg
onMouseOut msg =
    on "mouseout" (Json.succeed msg)



-- CUSTOM


{-| Create a custom event listener. Normally this will not be necessary, but
you have the power! Here is how `onClick` is defined for example:

    import Json.Decode as Decode

    onClick : msg -> Attribute msg
    onClick message =
        on "click" (Decode.succeed message)

The first argument is the event name in the same format as with JavaScript's
[`addEventListener`][aEL] function.

The second argument is a JSON decoder. Read more about these [here][decoder].
When an event occurs, the decoder tries to turn the event object into an Elm
value. If successful, the value is routed to your `update` function. In the
case of `onClick` we always just succeed with the given `message`.

If this is confusing, work through the [Elm Architecture Tutorial][tutorial].
It really helps!

[aEL]: https://developer.mozilla.org/en-US/docs/Web/API/EventTarget/addEventListener
[decoder]: /packages/elm/json/latest/Json-Decode
[tutorial]: https://github.com/evancz/elm-architecture-tutorial/

**Note:** This creates a [passive] event listener, enabling optimizations for
touch, scroll, and wheel events in some browsers.

[passive]: https://github.com/WICG/EventListenerOptions/blob/gh-pages/explainer.md

-}
on : String -> Json.Decoder msg -> Attribute msg
on event decoder =
    VirtualDom.Types.Event event (VirtualDom.Types.Normal decoder)


{-| Create an event listener that may [`stopPropagation`][stop]. Your decoder
must produce a message and a `Bool` that decides if `stopPropagation` should
be called.

[stop]: https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation

**Note:** This creates a [passive] event listener, enabling optimizations for
touch, scroll, and wheel events in some browsers.

[passive]: https://github.com/WICG/EventListenerOptions/blob/gh-pages/explainer.md

-}
stopPropagationOn : String -> Json.Decoder ( msg, Bool ) -> Attribute msg
stopPropagationOn event decoder =
    VirtualDom.Types.Event event (VirtualDom.Types.MayStopPropagation decoder)


{-| Create an event listener that may [`preventDefault`][prevent]. Your decoder
must produce a message and a `Bool` that decides if `preventDefault` should
be called.

For example, the `onSubmit` function in this library _always_ prevents the
default behavior:

[prevent]: https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault

    onSubmit : msg -> Attribute msg
    onSubmit msg =
        preventDefaultOn "submit" (Json.map alwaysPreventDefault (Json.succeed msg))

    alwaysPreventDefault : msg -> ( msg, Bool )
    alwaysPreventDefault msg =
        ( msg, True )

-}
preventDefaultOn : String -> Json.Decoder ( msg, Bool ) -> Attribute msg
preventDefaultOn event decoder =
    VirtualDom.Types.Event event (VirtualDom.Types.MayPreventDefault decoder)


{-| Create an event listener that may [`stopPropagation`][stop] or
[`preventDefault`][prevent].

[stop]: https://developer.mozilla.org/en-US/docs/Web/API/Event/stopPropagation
[prevent]: https://developer.mozilla.org/en-US/docs/Web/API/Event/preventDefault

**Note:** If you need something even more custom (like capture phase) check
out the lower-level event API in `elm/virtual-dom`.

-}
custom : String -> Json.Decoder { message : msg, stopPropagation : Bool, preventDefault : Bool } -> Attribute msg
custom event decoder =
    VirtualDom.Types.Event event (VirtualDom.Types.Custom decoder)
