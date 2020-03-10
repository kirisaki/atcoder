import Data.List
main = do
  n <- read <$> getLine
  ws <- fmap read . words <$> getLine
  print . minimum $ map (\m -> (\(xs, ys) -> abs $ sum xs - sum ys) (splitAt m ws)) [1..n-1]
