module Helper exposing (..)

import Html exposing (Html, div, h1, li, text, ul)


add2 : Int -> Int -> Int
add2 x y =
    x + y


add3 : Float -> Float -> Float -> Float
add3 x y z =
    x + y + z


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc x y op =
    op x y


type alias ProgrammingLanguage =
    { name : String
    , releaseYear : Int
    , currentVersion : String
    }


languageNames : List ProgrammingLanguage -> List String
languageNames list =
    List.map .name list


type alias User =
    { name : String
    , uType : String
    }


onlyStudents : List User -> List String
onlyStudents list =
    List.map
        (\u ->
            case u.uType of
                "Student" ->
                    u.name

                _ ->
                    ""
        )
        list


type Videogame
    = Videogame String Int Bool Int (List String)


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map
        (\(Videogame _ _ _ _ genres) ->
            genres
        )
        list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "12GB"
    , model = "AMD A12"
    , brand = "HP"
    , screenSize = "15.6"
    }


main : Html msg
main =
    div []
        [ h1 [] [ text "My laptop" ]
        , div []
            [ ul []
                [ li [] [ text ("Ram: " ++ myLaptop.ram) ]
                , li [] [ text ("Modelo: " ++ myLaptop.model) ]
                , li [] [ text ("Marca: " ++ myLaptop.brand) ]
                , li [] [ text ("Pulgadas: " ++ myLaptop.screenSize) ]
                ]
            ]
        ]
