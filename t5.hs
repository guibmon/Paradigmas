{-Guilherme Bolzan Monteiro
CC-}

{-1-}
addSuffix :: String -> [String] -> [String]
addSuffix a str = [x ++ a | x <- str]

{-2-}
addSuffix2 :: String -> [String] -> [String]
addSuffix2 _ [] = []
addSuffix2 a (x:xs) = (++ a) (x) : addSuffix2 a xs

{-3-}
countShorts :: [String] -> Int
countShorts x = length (conta x)
conta :: [String] -> [String]
conta [] = []
conta (a:as) = if (length (a) < 5)
               then a : conta as
               else conta as

{-4-}
countShorts2 :: [String] -> Int
countShorts2 x = length ([y | y <- x, length (y) < 5])

{-5-}
ciclo :: Int -> [Int] -> [Int]
ciclo 0 _ = []
ciclo n x = x ++ ciclo (n - 1) x

{-6-}
combine :: [Int] -> [String] -> [(Int,String)]
combine [] [] = []
combine (a:as) (x:xs) = (a, x) : combine as xs

{-7-}
numera :: [String] -> [(Int, String)]
numera x = faz 1 x
faz :: Int -> [String] -> [(Int, String)]
faz _ [] = []
faz n (a:as) = (n, a) : faz (n + 1) as

{-8
a) Resultado: [(2, 3), (2, 5), (4, 5)]
Pegamos xs pares e ys começando em x + 1, ímpares
b) Resultado: ["lazyfrog", "lazydog", "bigfrog", "bigdog"]
Concatena os elementos de a com os de b: 1º de a com 1º de b, 1º de a com 2º de b,
2º de a com 1º de b e 2º de a com 2º de b
c) Resultado: "a-a-e-e-i-e-o-"
Pega todas as vogais da string mais um '-' após cada vogal
-}

{-9-}
{-crossProduct :: [Int] -> [Int] -> [(Int, Int)]
crossProduct [] _ = []
crossProduct (a:as) b = pairWithAll a b : crossProduct as b
pairWithAll :: Int -> [Int] -> [(Int, Int)]
pairWithAll _ [] = []
pairWithAll x (y:ys) = (x, y) : pairWithAll x ys
-}
