import Data.Bits

main = do
  [a, b] <- map read . words <$> getLine :: IO [Int]
  let xs = case (even a, even b) of
        (True, True) -> [if even ((b - a) `div` 2) then 0 else 1, b]
        (True, False) -> [if even ((b - a + 1) `div` 2) then 0 else 1]
        (False, True) -> [a, if even ((b - a - 1) `div` 2) then 0 else 1, b]
        (False, False) -> [a, if even ((b - a) `div` 2) then 0 else 1]

  putStrLn . show $ foldl1 xor xs
