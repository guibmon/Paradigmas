{-Guilherme Bolzan Monteiro
CC-}

{-1-}
eleva2 :: [Int] -> [Int]
eleva2 [] = []
eleva2 (x:xs) = x^2 : eleva2 (xs)

{-2-}
{-contido :: Char -> String -> Bool
contido _ ' ' = False
contido y (x:xs) = (y == x) : contido (xs)
-}

{-4-}
{-translate :: [(Double, Double)] -> [(Double, Double)]
translate [] = []
translate (x,y):(xs,ys) = map (+2.0) [(x,y)] : translate (xs,ys)
-}

{-5-}
geraTabela' :: Int -> [(Int, Int)]
geraTabela' n = aux 1 n
aux :: Int -> Int -> [(Int, Int)]
aux x n 
   | (x <= n)     = (x, x^2) : aux (x+1) n
   | otherwise    = []
