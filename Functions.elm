module Functions exposing (Video, youtube)

import Html exposing (Html, div, iframe)
import Html.Attributes exposing (attribute, height, src, width)


type alias Video =
    { width : Int, height : Int, src : String }


frameborder : String -> Html.Attribute msg
frameborder t =
    attribute "frameborder" t


allow : String -> Html.Attribute msg
allow t =
    attribute "allow" t


allowfullscreen : String -> Html.Attribute msg
allowfullscreen t =
    attribute "allowfullscreen" t


youtube : Video -> Html msg
youtube video =
    iframe
        [ width video.width
        , height video.height
        , src video.src
        , frameborder "0"
        , allow "autoplay; encrypted-media"
        , allowfullscreen "True"
        ]
        []
