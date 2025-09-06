module Main where

import Test.HUnit
import Exercicio16 (maiorElemento)

testMaiorElemento :: Test
testMaiorElemento = TestList [
    "teste 1: numeros inteiros" ~: maiorElemento [1, 5, 2] ~?= 5,
    "teste 2: numeros negativos" ~: maiorElemento [-10, -5, -20] ~?= -5,
    "teste 3: strings" ~: maiorElemento ["banana", "laranja", "maca"] ~?= "maca",
    "teste 4: lista com um elemento" ~: maiorElemento [100] ~?= 100
    ]

main :: IO ()
main = runTestTT testMaiorElemento >>= print