main = do
  getLine
  hs <- map read . words <$> getLine :: IO [Int]
  putStrLn . show . length . filter id $ zipWith (==)  (scanl1 max hs) hs
