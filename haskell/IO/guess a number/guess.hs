import System.Random
 
check num lvl = do
	if lvl==3 
		then do putStrLn "You loose!"
		else do guess <- readLn :: IO Int
			if guess == num 
				then do putStrLn "You won!"
				else if num > guess
					then do 
						putStrLn "Higher number"
						check num (lvl+1)
					else do 
						putStrLn "Lower number"
						check num (lvl+1)
					
				  

main = do
    num <- randomIO :: IO Int
    let num2 = num `mod` 11
    putStrLn "Pick a guess"	
    check num2 0
