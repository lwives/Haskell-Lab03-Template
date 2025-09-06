module Exercicio04 (pertence, Aluno(..)) where

-- Analise a funcao 'pertence' fornecida abaixo. 
-- Ela funciona para qualquer tipo que suporte a comparacao de igualdade (Eq).
pertence :: (Eq a) => a -> [a] -> Bool
pertence x [] = False
pertence x (h:hs) = (x == h) || pertence x hs

-- Agora, sua tarefa:
-- 1. Defina o tipo de dado Aluno, com matricula (Int) e nome (String).
--    Derive a classe de tipos 'Show' para que o tipo possa ser impresso.

data Aluno = Aluno { matricula :: Int, nome :: String } deriving (Show)

-- 2. Implemente a classe de tipos 'Eq' para o tipo Aluno.
--    A definicao da funcao de igualdade (==) deve usar a matricula para
--    comparar dois alunos, ignorando o nome.

instance Eq Aluno where
  (==) :: Aluno -> Aluno -> Bool
  -- Implemente a funcao (==) aqui.