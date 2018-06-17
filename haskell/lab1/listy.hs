
headd (x:_) = x

lengthh [] = 0
lengthh (x:a) = lengthh a + 1

takee 0 _ = []
takee _ [] = []
takee n (x:a) = x : takee (n-1) a 


mapp f [] = []
mapp f (x:a) = f x : (mapp f a) 


(+++) a [] = a
(+++) [] a = a
(+++) (a:c) b = a : ((+++) c b)
