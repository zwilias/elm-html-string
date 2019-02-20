module Svg.Keyed exposing (node)

{-| A keyed node helps optimize cases where children are getting added, moved,
removed, etc. Common examples include:

  - The user can delete items from a list.
  - The user can create new items in a list.
  - You can sort a list based on name or date or whatever.

When you use a keyed node, every child is paired with a string identifier. This
makes it possible for the underlying diffing algorithm to reuse nodes more
efficiently.


# Keyed Nodes

@docs node

-}

import Svg.String exposing (Attribute, Svg)
import VirtualDom.Types


{-| Works just like `Svg.node`, but you add a unique identifier to each child
node. You want this when you have a list of nodes that is changing: adding
nodes, removing nodes, etc. In these cases, the unique identifiers help make
the DOM modifications more efficient.
-}
node : String -> List (Attribute msg) -> List ( String, Svg msg ) -> Svg msg
node tag attrs children =
    VirtualDom.Types.NodeNS "http://www.w3.org/2000/svg" tag attrs (VirtualDom.Types.Keyed children)
