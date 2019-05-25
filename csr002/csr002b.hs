import Control.Monad

main = do
  n <- readLn
  replicateM n $ 
    getLine >>= putStrLn . show . (\[a, b] -> a `mod` b) . fmap (read :: String -> Int) . words 

