module Svg.Lazy exposing (lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8)

{-|


# 🔥 This isn't actually lazy in this library..

.. because we can't keep track of the model without existential types. It just
eagerly evaluates. This set of function is here to serve as a drop-in
replacement.

@docs lazy, lazy2, lazy3, lazy4, lazy5, lazy6, lazy7, lazy8

-}

import Svg.String exposing (Svg)


{-| A performance optimization that delays the building of virtual DOM nodes.

Calling `(view model)` will definitely build some virtual DOM, perhaps a lot of
it. Calling `(lazy view model)` delays the call until later. During diffing, we
can check to see if `model` is referentially equal to the previous value used,
and if so, we just stop. No need to build up the tree structure and diff it,
we know if the input to `view` is the same, the output must be the same!

-}
lazy : (a -> Svg msg) -> a -> Svg msg
lazy f =
    f


{-| Same as `lazy` but checks on two arguments.
-}
lazy2 : (a -> b -> Svg msg) -> a -> b -> Svg msg
lazy2 f =
    f


{-| Same as `lazy` but checks on three arguments.
-}
lazy3 : (a -> b -> c -> Svg msg) -> a -> b -> c -> Svg msg
lazy3 f =
    f


{-| Same as `lazy` but checks on four arguments.
-}
lazy4 : (a -> b -> c -> d -> Svg msg) -> a -> b -> c -> d -> Svg msg
lazy4 f =
    f


{-| Same as `lazy` but checks on five arguments.
-}
lazy5 : (a -> b -> c -> d -> e -> Svg msg) -> a -> b -> c -> d -> e -> Svg msg
lazy5 f =
    f


{-| Same as `lazy` but checks on six arguments.
-}
lazy6 : (a -> b -> c -> d -> e -> f -> Svg msg) -> a -> b -> c -> d -> e -> f -> Svg msg
lazy6 f =
    f


{-| Same as `lazy` but checks on seven arguments.
-}
lazy7 : (a -> b -> c -> d -> e -> f -> g -> Svg msg) -> a -> b -> c -> d -> e -> f -> g -> Svg msg
lazy7 f =
    f


{-| Same as `lazy` but checks on eight arguments.
-}
lazy8 : (a -> b -> c -> d -> e -> f -> g -> h -> Svg msg) -> a -> b -> c -> d -> e -> f -> g -> h -> Svg msg
lazy8 f =
    f
