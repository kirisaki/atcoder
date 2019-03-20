import Data.List
main = getLine >> getLine >>= putStrLn . show . (+ (-1)) . foldl1 (*) . map ((+) 1 . length) . group . sort
