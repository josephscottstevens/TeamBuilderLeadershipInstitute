module About exposing (..)

import Color exposing (..)
import Element exposing (..)
import Element.Background as Background
import Element.Font as Font
import Html exposing (Html)


view : Html msg
view =
    Element.layout
        [ Background.color blue
        , Font.color white
        , Font.italic
        , Font.size 32
        , Font.family
            [ Font.external
                { url = "https://fonts.googleapis.com/css?family=EB+Garamond"
                , name = "EB Garamond"
                }
            , Font.sansSerif
            ]
        ]
    <|
        el
            [ width (px 200), height (px 200) ]
            (text "The Team-builder Leadership Institute")
