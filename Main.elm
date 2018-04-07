module Main exposing (..)

import Home
import Html exposing (..)
import Html.Attributes exposing (..)
import Html.Events exposing (..)


type alias Model =
    { page : Page
    }


type Page
    = Home
    | Contacts


model =
    { page = Home }


view model =
    div []
        [ h4 [] [ text "header" ]
        , case model.page of
            Home ->
                Home.viewHome

            Contacts ->
                div [] [ text "Contacts body" ]
        , a [ href "www.google.com"] [text "google"]
        , h2 [] [ text "footer" ]
        ]


type Msg
    = NoMsg


update msg model =
    case msg of
        NoMsg ->
            model


main =
    beginnerProgram { model = model, view = view, update = update }
