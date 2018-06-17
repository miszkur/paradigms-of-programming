
zipp [] [] = []
zipp (x:xs) (y:ys) = (x,y) : zip xs ys
