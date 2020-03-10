import Data.List
main = do
  x <- getLine
  putStrLn $ show $ maximum' $ map length $ filter (\w -> length w /= 1 || any (w ==) ["A", "T", "C", "G"]) $ groupBy (\y z -> elem y "ATCG" && elem z "ATCG") x

maximum' [] = 0
maximum' x = maximum x
