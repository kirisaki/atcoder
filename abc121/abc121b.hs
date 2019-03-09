main = do
  [_, m, c] <- map read . words <$> getLine
  bs <- map read . words <$> getLine
  xss <- map (map read . words) . lines <$> getContents
  putStrLn . show $ length [xs | xs <- xss, sum (zipWith (*) xs bs) + c > 0 ]

