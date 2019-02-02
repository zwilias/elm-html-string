module Browser.String exposing (sandbox, element)

import Browser
{-|

# Programs

@docs beginnerProgram, program, programWithFlag
-}



{-| Create a [`Program`][program] that describes how your whole app works.

Read about [The Elm Architecture][tea] to learn how to use this. Just do it.
The additional context is very worthwhile! (Honestly, it is best to just read
that guide from front to back instead of muddling around and reading it
piecemeal.)

[program]: http://package.elm-lang.org/packages/elm-lang/core/latest/Platform#Program
[tea]: https://guide.elm-lang.org/architecture/

-}
sandbox :
    { model : model
    , view : model -> Html msg
    , update : msg -> model -> model
    }
    -> Program Never model msg
sandbox { model, view, update } =
    Browser.sandbox
        { init =
            ( model
            , Cmd.none
            )
        , update =
            \msg innerModel ->
                ( update msg innerModel
                , Cmd.none
                )
        , view = view
        , subscriptions = \_ -> Sub.none
        }


{-| Create a [`Program`][program] that describes how your whole app works.

It works just like `program` but you can provide &ldquo;flags&rdquo; from
JavaScript to configure your application. Read more about that [here].

[program]: http://package.elm-lang.org/packages/elm-lang/core/latest/Platform#Program
[here]: https://guide.elm-lang.org/interop/javascript.html

-}
 :
    { init : flags -> ( model, Cmd msg )
    , update : msg -> model -> ( model, Cmd msg )
    , subscriptions : model -> Sub msg
    , view : model -> Html msg
    }
    -> Program flags model msg
element config =
    Browser.element { config | view = config.view >> toHtml }
