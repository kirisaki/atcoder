import Control.Monad

main = do
  [r, d, x] <- fmap read . words <$> getLine :: IO [Int]
  mapM_ print $ fmap (f r d x) [1..10]


f r d x0 0 = x0
f r d x  n = r * (f r d x (n-1)) - d
