import Control.Monad
main = do
  [n, m] <- fmap read . words <$> getLine
  let c = 0
  forM_ [1..m] $ \i -> do
    print c
    let c = 2
    pure ()
