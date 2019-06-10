main = do
  [a, b] <- fmap read . words <$> getLine
  print $ case a of
    x | 13 <= x -> b
      | 6 <= x && x <= 12 -> b `div` 2
      | otherwise -> 0

