import Control.Monad

main = do
  n <- readLn
  forM_ [1..n] $ \_ ->
    getLine >>= putStrLn . show . product . fmap (read :: String -> Int) . words 

