module Exercicio16 (maiorElemento) where

-- Elabore a função 'maiorElemento', que recebe uma lista e retorna o maior
-- elemento dela. A função deve ser genérica para qualquer tipo que possa ser
-- ordenado (classe de tipos 'Ord').
-- Considere que a lista de entrada nunca será vazia.

-- Exemplo: maiorElemento [1, 5, 2] deve retornar 5

maiorElemento :: (Ord a) => [a] -> a
maiorElemento lst = undefined -- Implemente aqui