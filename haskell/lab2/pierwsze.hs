pierwsze :: [Int] -> [Int]
pierwsze (a) = filter (\x -> czyPierwsza' x) a	 

czyPierwsza k = null [ x | x <- [2..k - 1], k `mod` x  == 0]

czyPierwsza' k = null $ filter (\x -> k `mod` x == 0) [2..k-1]
