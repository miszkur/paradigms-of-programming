{-# LANGUAGE FlexibleInstances #-}
class Intable a where
  toInt :: a -> Int

instance Intable [Char] where
  toInt x = read x :: Int 


mySuperAdd :: (Intable a, Intable b) => a -> b -> Int
mySuperAdd x y = toInt x + toInt y
