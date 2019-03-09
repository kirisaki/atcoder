main = do
  [a, b, c] <- map read . words <$> getLine
  putStrLn . show $ min (b `div` a) c

