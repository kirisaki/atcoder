{-# LANGUAGE OverloadedStrings #-}
import qualified Data.ByteString.Lazy.Char8 as LBS
import Control.Monad
main = do
  [_, q] <- map read . words <$> getLine
  s <- flip LBS.snoc ' ' . LBS.pack <$> getLine
  let ans = map (\i -> if LBS.index s i == 'A' && LBS.index s (i+1) == 'C' then 1 else 0) [0..LBS.length s - 1] :: [Int]
  let ans' = scanl (+) 0 ans
  forM_ [1..q]  $ \_ -> do
    [l, r] <- map read . words <$> getLine
    putStrLn . show $ ans' !! (r-1) - ans' !! (l -1)
