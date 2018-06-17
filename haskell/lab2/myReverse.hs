
myReverse xs = foldr (\ x acc -> acc ++ [x]) [] xs
