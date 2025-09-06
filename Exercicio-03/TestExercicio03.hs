module Main where

import Test.HUnit
import Exercicio03 (fibonacci)

testFibonacci :: Test
testFibonacci = TestList [
    "teste 1: 5 primeiros elementos" ~: take 5 fibonacci ~?= [0, 1, 1, 2, 3],
    "teste 2: 1 elemento" ~: take 1 fibonacci ~?= [0],
    "teste 3: 0 elementos" ~: take 0 fibonacci ~?= [],
    "teste 4: 10 primeiros elementos" ~: take 10 fibonacci ~?= [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
    ]

main :: IO ()
main = runTestTT testFibonacci >>= print