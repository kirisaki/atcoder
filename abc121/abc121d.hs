import Data.Bits

main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  let xs = [a..b]
  putStrLn . show $ foldl1 xor xs
  
