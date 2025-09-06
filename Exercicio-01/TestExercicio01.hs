module Main where

import Test.HUnit
import Exercicio02 (potenciasDe2)

testPotenciasDe2 :: Test
testPotenciasDe2 = TestList [
    "teste 1: 5 primeiros elementos" ~: potenciasDe2 5 ~?= [2, 4, 8, 16, 32],
    "teste 2: 1 elemento" ~: potenciasDe2 1 ~?= [2],
    "teste 3: 0 elementos" ~: potenciasDe2 0 ~?= [],
    "teste 4: 10 primeiros elementos" ~: potenciasDe2 10 ~?= [2, 4, 8, 16, 32, 64, 128, 256, 512, 1024]
    ]

main :: IO ()
main = runTestTT testPotenciasDe2 >>= print