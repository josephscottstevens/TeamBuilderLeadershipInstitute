module Main exposing (main)
 
import About
import Home
import Html exposing (Html, div)


type alias Model =
    { page : Page
    }


type Page
    = Home
    | About


type Msg
    = NoMsg


init : ( Model, Cmd Msg )
init =
    ( { page = Home }, Cmd.none )


view : Model -> Html msg
view model =
    case model.page of
        Home ->
            Home.view

        About ->
            About.view


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoMsg ->
            ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none


main : Program Never Model Msg
main =
    Html.program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
