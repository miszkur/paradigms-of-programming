maybe_el :: (a -> Bool) -> [a] -> Maybe a
maybe_el pred [] = Nothing

maybe_el pred (x:xs) | pred x = Just x
                   | otherwise = maybe_el pred xs
