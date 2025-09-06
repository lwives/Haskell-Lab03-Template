module Main where

import Test.HUnit
import Exercicio04 (pertence, Aluno(..))

testImplementacaoAluno :: Test
testImplementacaoAluno = TestList [
    -- Testes para a implementacao de (==) na classe Eq
    "teste 1: alunos com mesma matricula" ~: Aluno 1 "Joao" == Aluno 1 "Maria" ~?= True,
    "teste 2: alunos com matriculas diferentes" ~: Aluno 1 "Joao" == Aluno 2 "Joao" ~?= False,

    -- Testes que usam a funcao 'pertence' com o novo tipo Aluno
    "teste 3: aluno presente na lista" ~:
        let
            listaAlunos = [Aluno 1 "A", Aluno 2 "B", Aluno 3 "C"]
            alunoBuscado = Aluno 2 "Nome qualquer"
        in
            pertence alunoBuscado listaAlunos ~?= True,

    "teste 4: aluno nao presente na lista" ~:
        let
            listaAlunos = [Aluno 1 "A", Aluno 2 "B", Aluno 3 "C"]
            alunoBuscado = Aluno 4 "Outro Nome"
        in
            pertence alunoBuscado listaAlunos ~?= False
    ]

main :: IO ()
main = runTestTT testImplementacaoAluno >>= print