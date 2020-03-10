main = do
  x <- getLine
  putStrLn $ case x of
    "A" -> "T"
    "T" -> "A"
    "C" -> "G"
    "G" -> "C"
    
