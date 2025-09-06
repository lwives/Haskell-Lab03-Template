module Main where

import Test.HUnit
import Exercicio02 (sequenciaCubos)

testSequenciaCubos :: Test
testSequenciaCubos = TestList [
    "teste 1: 3 primeiros elementos" ~: sequenciaCubos 3 ~?= [2, 8, 512],
    "teste 2: 1 elemento" ~: sequenciaCubos 1 ~?= [2],
    "teste 3: 0 elementos" ~: sequenciaCubos 0 ~?= [],
    "teste 4: 4 primeiros elementos" ~: sequenciaCubos 4 ~?= [2, 8, 512, 134217728]
    ]

main :: IO ()
main = runTestTT testSequenciaCubos >>= print