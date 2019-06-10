main = do
  [n, m] <- fmap read . words <$> getLine
  lrs <- fmap ((\[l, r] -> Just (read l, read r)) . words) . lines <$> getContents :: IO [Maybe (Int, Int)]
  print  .g $ foldr f (Just (1, n)) lrs

g (Just (l, r)) = abs (l - r) + 1
g Nothing = 0

f Nothing _ = Nothing
f _ Nothing = Nothing
f (Just (l, r)) (Just (l', r'))
  | l' <= r && l <= l' && r <= r' = Just (l', r)
  | l <= r' && l' <= l && r' <= r = Just (l, r')
  | l <= l' && r' <= r = Just (l', r')
  | l' <= l && r <= r' = Just (l, r)
  | otherwise = Nothing
  
