

sup x | x < 10 = x
      | otherwise = sup $ oo x

oo x | x < 10 = x
     | otherwise = (x `mod` 10)+ oo (x `div` 10) 
