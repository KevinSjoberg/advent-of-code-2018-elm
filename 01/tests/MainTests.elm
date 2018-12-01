module MainTests exposing (suite)

import Expect exposing (Expectation)
import Main exposing (..)
import Test exposing (..)


suite : Test
suite =
    describe "Frequency calibration"
        [ describe "frequency"
            [ test "sums given deltas starting from zero" <|
                \_ ->
                    let
                        deltas =
                            [ 1, 2, 3, -2 ]
                    in
                    Expect.equal (frequency deltas) 4
            ]
        , describe "repeatedFrequency"
            [ test "finds first repeated frequency in given deltas" <|
                \_ ->
                    let
                        deltas =
                            [ 3, 3, 4, -2, -4 ]
                    in
                    Expect.equal (repeatedFrequency deltas) 10
            ]
        ]
