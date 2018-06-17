import Data.List (sortBy)
import Data.Ord (comparing)

data Osoba = Osoba 
	{ imie :: String 
	, nazwisko :: String
	, pesel :: String
	} deriving (Show, Eq) 

class MinPes a where
  (==) :: a -> a -> Bool
  (>) :: a -> a -> Bool
  (<) :: a -> a -> Bool
  sort' :: [a] -> [a]


instance MinPes Osoba where 
	(==) a b = (pesel a)Prelude.==(pesel b)
	(<) a b = (pesel a)Prelude.<(pesel b)
	(>) a b = (pesel a)Prelude.>(pesel b)
	sort' = sortBy (comparing nazwisko)  -- xD	

