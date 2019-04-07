main = do
  a <- read <$> getLine
  b <- read <$> getLine
  c <- read <$> getLine
  d <- read <$> getLine
  e <- read <$> getLine
  k <- read <$> getLine
  putStrLn $ if e - a > k then ":(" else "Yay!"
