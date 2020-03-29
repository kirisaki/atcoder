main = do
    s <- getLine
    putStrLn $ if s !! 2 == s !! 3 && s !! 4 == s !! 5 then "Yes" else "No"

