import Data.List
main = do
  [a, b] <- map read . words <$> getLine
  putStrLn . show . sum . take 2 . reverse $ sort [a, b, a-1, b-1]
