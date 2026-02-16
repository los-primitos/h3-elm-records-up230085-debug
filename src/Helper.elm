module Helper exposing (..)

import Html


add2 : Int -> Int -> Int
add2 int1 int2 =
    int1 + int2


add3 : Float -> Float -> Float -> Float
add3 int1 int2 int3 =
    int1 + int2 + int3


calc : Int -> Int -> (Int -> Int -> Int) -> Int
calc int1 int2 operator =
    operator int1 int2


lang : List { name : String, releaseYear : Int, currentVersion : String }
lang =
    [ { name = "Python"
      , releaseYear = 2000
      , currentVersion = "Nueva"
      }
    , { name = "Java"
      , releaseYear = 2000
      , currentVersion = "Ultima"
      }
    ]


languageNames : List { name : String, releaseYear : Int, currentVersion : String } -> List String
languageNames list =
    List.map .name list


users : List { name : String, uType : String }
users =
    [ { name = "Juan"
      , uType = "Student"
      }
    , { name = "Pedro"
      , uType = "Profesor"
      }
    ]


onlyStudents : List { name : String, uType : String } -> List String
onlyStudents list =
    List.map
        (\user ->
            case user.uType of
                "Student" ->
                    user.name

                _ ->
                    ""
        )
        list


type alias Videogame =
    { title : String
    , releaseYear : Int
    , available : Bool
    , downloads : Int
    , genres : List String
    }


videogames : List Videogame
videogames =
    [ { title = "Duckgame"
      , releaseYear = 2014
      , available = True
      , downloads = 80000
      , genres = [ "4v4", "Shooter" ]
      }
    , { title = "Leagueoflegends"
      , releaseYear = 2009
      , available = False
      , downloads = 30000
      , genres = [ "MMO", "Strategy" ]
      }
    ]


getVideogameGenres : List Videogame -> List (List String)
getVideogameGenres list =
    List.map .genres list


type alias Computer =
    { ram : String
    , model : String
    , brand : String
    , screenSize : String
    }


myLaptop : Computer
myLaptop =
    { ram = "32", model = "tres", brand = "Asus", screenSize = "16" }


main : Html.Html msg
main =
    Html.div []
        [ Html.h1 [] [ Html.text "My laptop" ]
        , Html.div [] [ Html.ul [] [ Html.li [] [ Html.text ("Ram: " ++ .ram myLaptop) ], Html.li [] [ Html.text ("Modelo: " ++ .model myLaptop) ], Html.li [] [ Html.text ("Marca: " ++ .brand myLaptop) ], Html.li [] [ Html.text ("Pulgadas: " ++ .screenSize myLaptop) ] ] ]
        ]
