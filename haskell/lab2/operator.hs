
generatorOperator :: (lewa -> prawa -> wynik) -> lewa -> (prawa -> wynik)
-- funkcja przyjmuje operator, który jest typu (lewa -> prawa -> wynik)
-- oraz lewą część operatora i zwraca funkcję, która przyjmuje prawą część operatora i zwraca wynik

generatorOperator op x = \a -> op x a 

-- wywolanie w ghci: let fu=generatorOperator (+) 2 

