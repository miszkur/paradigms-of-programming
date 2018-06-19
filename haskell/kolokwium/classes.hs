
class Ord a => Id a where
        toInt :: a -> Int

class HasId a where
        getId :: Id b => a -> b

class Repository a where
        insert :: HasId h => h -> a -> a
        delete :: Id i => i -> a -> a
        get :: (Id i, HasId h) => i -> a -> Maybe h
        update :: (Id i, HasId h) => i -> h -> a -> a
        count :: a -> Int

data InMemoryRepository val key = InMemoryRepository (Map key val)        

instance Repository InMemoryRepository where
        insert :: Ord k => k -> a -> Map k a -> Map k a
        Data.Map.delete :: Ord k => k -> Map k a -> Map k a
        Data.Map.alter :: Ord k => (Maybe a -> Maybe a) -> k -> Map k a -> Map k a
        Data.Map.lookup :: Ord k => k -> Map k a -> Maybe a
        Data.Map.size :: Map k a -> Int
