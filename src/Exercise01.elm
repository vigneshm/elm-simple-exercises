module Exercise01 exposing (main)

{-
   This exercise should help you understand how elm-tests work. Look through
   each variable that starts with `test` and make them pass.
-}

import Expect
import Test exposing (concat, describe, test, Test)
import Test.Runner.Html


main : Test.Runner.Html.TestProgram
main =
    describe "Simple test"
        [ testStringEquality
        ]
        |> Test.Runner.Html.run


testStringEquality : Test
testStringEquality =
    test "Check string equality" <|
        \() ->
            -- The value on the left of `|> Expect.equal` should be equal to the
            -- value on right. The value on the right is the expected value.
            -- So you need to change the value on the left so that the test
            -- passes.
            "Foo" |> Expect.equal "Bar"


add : Int -> Int -> Int
add num1 num2 =
    {-
       The implementation of `add` function is intentionally wrong. Check the
       `testAdd` function to see the expected result of this function.
    -}
    num1 + num2 + 1


testAdd : Test
testAdd =
    test "add function" <|
        \() ->
            add 5 3 |> Expect.equal 8


greet : String -> String
greet gender =
    {-
       `greet` function takes gender (male or female) and should return
       "Hello Sir" for male and "Hello Ma'am" for female.
       (hint: http://elm-lang.org/docs/syntax#conditionals)
    -}
    ""


testGreetForMale : Test
testGreetForMale =
    test "greet function for male" <|
        \() ->
            greet "male" |> Expect.equal "Hello Sir"


testGreetForFemale : Test
testGreetForFemale =
    test "greet function for female" <|
        \() ->
            greet "female" |> Expect.equal "Hello Ma'am"


isMultipleOf3 : Int -> Bool
isMultipleOf3 num =
    False


testIsMultipleOf3 : Test
testIsMultipleOf3 =
    test "isMultipleOf3 function for 6" <|
        \() ->
            isMultipleOf3 6 |> Expect.equal True
