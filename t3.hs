{-Guilherme Bolzan Monteiro
CC-}

{-1-}
isEven :: Int -> Bool
isEven n = mod n 2 == 0
{-funcao que retorna True se o numero informado eh par
e retorna False se o numero informado eh impar-}

{-2-}
somaquad :: Int -> Int -> Int
somaquad x y = x^2 + y^2

{-3-}
doubleFirst :: [Int] -> Int
doubleFirst x = (head x)^2

{-4-}
hasEqHeads :: [Int] -> [Int] -> Bool
hasEqHeads x y = (head x) == (head y)

{-5-}
putMr :: [String] -> [String]
putMr lista = map ("Mr."++) (lista)

{-6-}
contaEspacos :: String -> Int
contaEspacos x = length (filter (==' ') x)

{-7-}
calculaLista :: [Double] -> [Double]
calculaLista x = zipWith (+) (map (3*) (map (^2)  x)) (map (+1) (map (2/) x))

{-8-}
verificaIdade :: [Int] -> [Int]
verificaIdade x = filter (<45) x

{-9-}
serie :: Double -> [Double] -> Double
serie x lis = sum (map (/x) lis)

{-10-}
--charFound :: Char -> String -> Bool
--charFound x s = map (filter (==x)) s == x

{-11-}
htmlListItems :: [String] -> [String]
htmlListItems x = map ("<LI>"++) (map (++"</LI>") (x))

{-12-}
{-a funcao takeWhile vai pegando elementos de uma lista informada
enquanto o teste informado for verdadeiro. Quando o teste for falso,
a funcao nao pega mais nada-}
{-Exemplo: takeWhile (< 10) [1, 3, 5, 11, 7, 2, 12] retorna [1, 3, 5]-}
