main = do
  [n, k] <- fmap read . words <$> getLine
  putStrLn . show $ (sum $ fmap (\x -> 1/2**(if k < x*2 then 1 else fromIntegral . ceiling $ logBase 2 (k/x) )) [1..n])/n
