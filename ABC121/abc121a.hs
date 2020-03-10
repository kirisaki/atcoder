main = do
  [h, w] <- map read . words <$> getLine
  [h', w'] <- map read . words <$> getLine
  putStrLn . show $ h * w - (h' * w + h * w' - h' * w')

