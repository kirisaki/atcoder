import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    [n, m] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    cs <- fmap (fmap (fst . MA.fromJust . BS.readInt)) . fmap BS.words . BS.lines <$> BS.getContents
    let candidates = case n of
                       1 -> fmap digit [0..9]
                       2 -> fmap digit [10..99]
                       3 -> fmap digit [100..999]
                       _ -> undefined

    case filter (check cs) candidates of
      [] ->
          putStrLn "-1"
      anss -> do
          let ans = minimum anss
          putStrLn $ foldl (++) "" (fmap show ans)

digit :: Int -> [Int]
digit x = nums
    where
        str = show x
        nums = fmap (\c -> read [c]) str

check :: [[Int]] -> [Int] -> Bool
check consts cand = and $ fmap (\[s, c] -> cand !! (s - 1) == c) consts
