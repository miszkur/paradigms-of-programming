policzISumuj :: (Int -> Int) -> Int -> Int -> Int
policzISumuj fun p d = sum $  map (*2) $filter (\x -> x<=d && x>=p) [2..20]
