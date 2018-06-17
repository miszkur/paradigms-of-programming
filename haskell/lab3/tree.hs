
{-# LANGUAGE FlexibleInstances #-}
{-# LANGUAGE UndecidableInstances #-}



data Tree a = Empty | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

myTree :: Tree Int
myTree1 :: Tree Int
myTree = Empty
myTree1 = Node 1 (Node 2 Empty (Node 3 Empty Empty)) (Node 4 (Node 2 (Node 2 Empty Empty) (Node 5 Empty Empty)) (Node 5 (Node 5 Empty Empty) (Node 5 Empty Empty)))


nnodes :: Tree a -> Int  
nnodes Empty = 0
nnodes (Node x l r) = 1 + nnodes l + nnodes r

empty :: Eq a => Tree a -> Bool
empty x = x == Empty
     
nsum :: Num a => Tree a -> a
nsum Empty = 0
nsum (Node x l r) = x + nsum l + nsum r 

toString :: (Eq a, Show a) => Tree a -> [Char]
toString Empty = ""
toString (Node x l r) = if empty l && empty r then show x
                                else show x ++ "(" ++ toString l ++ "," ++ toString r ++ ")" 

search :: Eq a => a -> Tree a -> Bool
search el Empty = False
search el (Node x l r) = x == el || search el l || search el r

--wstawianie zgodnie z regulami drzewa poszukiwan binarnych
insert :: Ord a => a -> Tree a -> Tree a
insert x Empty = Node x Empty Empty
insert x (Node a left right)
    | x == a = Node x left right
    | x < a = Node a (insert x left) right
    | x > a = Node a left (insert x right)


remove :: Ord a => a -> Tree a -> Tree a
remove _ Empty = Empty
remove x (Node a left right) 
    | search x left = Node a (remove x left) right
    | search x right = Node a left (remove x right) 
    
--znaleziono element
remove _ (Node a Empty Empty) = Empty
remove _ (Node a Empty right) = right
remove _ (Node a left Empty) = left
remove _ (Node a left right) = helper left right

--wstawiam prawe poddrzewo maksymalnie po lewej
helper (Node a Empty right) treeToPut = Node a treeToPut right
helper (Node a left right) treeToPut = Node a (helper left treeToPut) right

leaves (Node a Empty Empty) = a:[]
leaves (Node a Empty right) = leaves right
leaves (Node a left Empty) = leaves left
leaves (Node a left right) = leaves left ++ leaves right 













