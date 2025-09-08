-- Função Fatorial com pattern matching
fat1 :: Int -> Int
fat1 0 = 1
fat1 n = n * fat1 (n-1)

-- Função Fatorial usando if...then...else
-- Integral é uma classe de tipo que envolve Int e Integer
-- note a definição com uma restrição de classe de tipo (antes do =>)
-- a assinatura da funcao indica que fat2 trabalha com Integrais 
-- 'a' é um tipo qualquer (uma variável de tipo genérico), restrita a tipos
-- compativeis com Integral
fat2 :: (Integral a) => a -> a
fat2 n = if (n==0) then 1 else n * fat2 (n-1)

-- Fatorial usando Guardas
fat3 :: (Integral a) => a -> a
fat3 n
| n == 0 = 1 
| otherwise = n * fat3 (n-1)

-- power (eleva a potencia)
power :: (Eq a, Fractional a, Integral b) => a -> b -> a
power 0 _ = 1
power _ 0 = 1
power n p | p > 0 = n * power n (p-1) 
power n p | p < 0 = 1 / (power n (abs p))

-- somalst de maneiras diferentes
somalst lst = foldr (\x -> \y ->x+y) 0 lst
somalst' lst = foldr (\x y ->x+y) 0 lst
somalst'' lst = foldr (+) 0 lst-- Função Fatorial com pattern matching

-- Cláusula 'where' introduz escopo de definições locais
produto' ls1 ls2 = foldr (+) 0 (map (\(x,y)->x*y) (combinals ls1 ls2))
   where
      combinals [] _ = []
      combinals _ [] = []
      combinals ls1 ls2 = (head ls1, head ls2):combinals (tail ls1) tail (ls2)

-- Uso de if...then...else 
-- Função que insere um número em uma lista ordenada de números
insls n [] = [n]
insls n (h:t) = if (n<h) then n:h:t else h:(insls n t)
