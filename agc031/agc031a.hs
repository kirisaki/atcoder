import Data.List
main = getLine >> getLine >>= putStrLn . (show :: Integer -> String) . flip mod (10^9 + 7) . (+ (-1)) . foldl1 (*) . map ((+) 1 . fromIntegral . length) . group . sort
