

main = do
    putStrLn "Gimme you name: "
    name <- getLine
    putStrLn $ "Reversed name: " ++ reverse' name

reverse' str = foldl (\x acc -> acc : x) [] str
