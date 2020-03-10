main = do
  n <- read <$> getLine
  xs <- map read . lines <$> getContents
  putStrLn . show $ ceiling (n / minimum xs) + 4
