module Html.String.Lazy exposing (lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8)

{-|


# 🔥 This isn't actually lazy in this library..

.. because we can't keep track of the model without existential types. It just
eagerly evaluates. This set of function is here to serve as a drop-in
replacement.

@docs lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8

-}

import Html.String exposing (Html)


{-| A performance optimization that delays the building of virtual DOM nodes.

Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
it. Calling `(lazy view model)` delays the call until later. During diffing, we
can check to see if `model` is referentially equal to the previous value used,
and if so, we just stop. No need to build up the tree structure and diff it,
we know if the input to `view` is the same, the output must be the same!

-}
lazy : (a -> Html msg) -> a -> Html msg
lazy fn a =
    fn a


{-| Same as `lazy` but checks on two arguments.
-}
lazy2 : (a -> b -> Html msg) -> a -> b -> Html msg
lazy2 fn a b =
    fn a b


{-| Same as `lazy` but checks on three arguments.
-}
lazy3 : (a -> b -> c -> Html msg) -> a -> b -> c -> Html msg
lazy3 fn a b c =
    fn a b c


{-| Same as `lazy` but checks on four arguments.
-}
lazy4 : (a -> b -> c -> d -> Html msg) -> a -> b -> c -> d -> Html msg
lazy4 fn a b c d =
    fn a b c d


{-| Same as `lazy` but checks on five arguments.
-}
lazy5 : (a -> b -> c -> d -> e -> Html msg) -> a -> b -> c -> d -> e -> Html msg
lazy5 fn a b c d e =
    fn a b c d e


{-| Same as `lazy` but checks on six arguments.
-}
lazy6 : (a -> b -> c -> d -> e -> f -> Html msg) -> a -> b -> c -> d -> e -> f -> Html msg
lazy6 fn a b c d e f =
    fn a b c d e f


{-| Same as `lazy` but checks on seven arguments.
-}
lazy7 : (a -> b -> c -> d -> e -> f -> g -> Html msg) -> a -> b -> c -> d -> e -> f -> g -> Html msg
lazy7 fn a b c d e f g =
    fn a b c d e f g


{-| Same as `lazy` but checks on eight arguments.
-}
lazy8 : (a -> b -> c -> d -> e -> f -> g -> h -> Html msg) -> a -> b -> c -> d -> e -> f -> g -> h -> Html msg
lazy8 fn a b c d e f g h =
    fn a b c d e f g h
