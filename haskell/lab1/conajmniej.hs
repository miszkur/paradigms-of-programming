con [] _ = []

con (y:xs) n | (length (filter (\x -> x==y) xs)) >= (n-1) = y : (con (filter (\x -> x/=y) xs) n) 
             | otherwise = con xs n


