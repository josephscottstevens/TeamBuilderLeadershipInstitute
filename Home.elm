module Home exposing (..)

import Color exposing (..)
import Element exposing (..)
import Element.Font as Font
import Html exposing (Html, div, iframe)
import Html.Attributes exposing (src, attribute)

frameborder : String -> Html.Attribute msg
frameborder t = attribute "frameborder" t
allow : String -> Html.Attribute msg
allow t = attribute "allow" t
allowfullscreen : String -> Html.Attribute msg
allowfullscreen t = attribute "allowfullscreen" t


view : Html msg
view =
    Element.layout
        [  Font.color black
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
        row [width fill, height (px 333 ), alignTop, alignLeft] 
            [ image [width (px 341 )] { src  = "TeamBuilderLeadershipInstitute.png" , description=""}
            , column [width fill] [
                el [] (text "The Team-builder Leadership Institute!")
                , el [] (text "Skills To Create Your World")
            ]
            , column [width fill] [
                html <| 
                    iframe  [ Html.Attributes.width 230, 
                                Html.Attributes.height 129, 
                                Html.Attributes.src "https://www.youtube.com/embed/-BBziBXv0AY", 
                                frameborder "0", 
                                allow "autoplay; encrypted-media", 
                                allowfullscreen "True"
                                ] []
            ] 
        ]
  