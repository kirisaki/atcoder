import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.Vector as V

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    xss <- V.fromList . fmap (fmap (fst . MA.fromJust . BS.readInt)) . fmap BS.words . BS.lines <$> BS.getContents
    putStrLn . show $ happiness (n - 1) xss

happiness :: Int -> V.Vector [Int] -> Int
happiness n hss = memo V.! n
    where
        memo = V.fromList [happiness' j hss | j <- [0..n]]
        happiness' 0 hss = maximum $ hss V.! 0
        happiness' 1 hss = maximum [hss V.! 0 !! j + hss V.! 1 !! k |j <- [0..2], k <- [0..2], j /= k]
        happiness' n hss = happiness (n - 1) hss + snd (maximum [(hss V.! (n - 1) !! j + hss V.! n !! k, hss V.! n !! k) |j <- [0..2], k <- [0..2], j /= k])
