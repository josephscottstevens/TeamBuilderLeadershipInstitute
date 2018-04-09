module Home exposing (..)

import Color exposing (..)
import Element exposing (..)
import Element.Border as Border
import Element.Font as Font
import Functions exposing (youtube)
import Html exposing (Html, div, iframe)


--http://package.elm-lang.org/packages/mdgriffith/stylish-elephants/5.0.1/Element


view : Html msg
view =
    Element.layout
        [ Font.color black
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
        column []
            [ row [ width fill, height (px 333), alignTop, alignLeft ]
                [ image [ width (px 341) ] { src = "TeamBuilderLeadershipInstitute.png", description = "" }
                , column [ width fill ]
                    [ el [] (text "The Team-builder Leadership Institute!")
                    , el [] (text "Skills To Create Your World")
                    ]
                , column [ width fill ]
                    [ html <|
                        youtube { width = 230, height = 129, src = "https://www.youtube.com/embed/-BBziBXv0AY" }
                    , link [] { url = "http://theteambuilderadrc.com/20-minute-training/", label = text "learn more" }
                    , link [] { url = "http://theteambuilderadrc.com/20-minute-training/", label = text "subscribe" }
                    , el
                        [ Border.widthEach { bottom = 1, top = 0, left = 0, right = 0 }
                        , Border.solid
                        ]
                        (text "Best New Leadership Book!")
                    , link [] { url = "http://theteambuilderadrc.com/book/the-architects-of-excellence/", label = text "The Architects Of Excellence" }
                    ]
                ]
            , row [ width fill, height (px 55) ]
                [ el [] (text "1")
                , el [] (text "2")
                ]
            ]
