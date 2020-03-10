main = do
  [a, b, t] <- map read . words <$> getLine
  putStrLn . show $ t `div` a * b

