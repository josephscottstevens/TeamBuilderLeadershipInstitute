module Main exposing (..)

import Chat
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
    | Chat


model =
    { page = Chat }


view model =
    div []
        [ case model.page of
            Home ->
                Home.viewHome

            Contacts ->
                div [] [ text "Contacts body" ]

            Chat ->
                Chat.view
        ]


type Msg
    = NoMsg


update msg model =
    case msg of
        NoMsg ->
            model


main =
    beginnerProgram { model = model, view = view, update = update }
