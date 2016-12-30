module Main exposing (..)

import Html exposing (..)
import Html.Attributes exposing (..)


string1 =
    """This is a musical composition with five patterns.\x0D\x0D
Each pattern is made up of two measures in different time signatures.\x0D\x0D
The drum beat changes time signatures to highlight a specific pattern.\x0D\x0D
This beat change occurs when the current pattern and the next pattern are in sync.\x0D\x0D
The current pattern is played in a higher octave.\x0D\x0D
The piece ends after 420 quarter notes, which is the first time that all patterns end a measure simultaneously.\x0D\x0D
At a tempo of 140 bpm, this is precisely 3 minutes."""


string2 =
    """You can see each pattern and its steps.\x0D\x0D
Below it is an indication of which time signature it is in and how many times it has looped.\x0D\x0D
If it is wide, it means the drums are currently playing in that time signature."""


view =
    div
        []
        [ header
            []
            [ h1
                []
                [ text "Metered" ]
            , h2
                []
                [ text "Jake Albaugh" ]
            ]
        , node "main"
            []
            []
        , aside
            []
            [ p
                []
                [ text string1 ]
            , p
                []
                [ text string2 ]
            , p
                []
                [ button
                    [ id "toggle" ]
                    [ span
                        [ class "play" ]
                        [ text "Play" ]
                    , span
                        [ class "stop" ]
                        [ class "Pause" ]
                    ]
                ]
            , p
                [ class "center" ]
                [ input
                    [ id "tempo", type_ "range", step "1", min "80", max "280" ]
                    []
                , br
                    []
                    [ label
                        [ for "tempo" ]
                        [ text "Tempo"
                        , span
                            [ id "tempo-value" ]
                            []
                        ]
                    ]
                ]
            ]
        ]
