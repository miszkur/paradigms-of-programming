mojeLiczby = [f x | x <- lista, p x]
             where f = \a -> 2 * a          -- f mnoży liczbę razy 2
                   lista = [1..10]          -- lista początkowa
                   p = \b -> b `mod` 2 == 0 -- p wybiera liczby parzyste

mojeLiczby' = map (*2) $ filter (\b -> b `mod` 2 == 0) [1..10] 
