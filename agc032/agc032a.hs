main = do
  getLine
  xs <- map read <$> getLine :: IO Int
