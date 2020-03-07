import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    [a, b] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    let candidates = [ x | x <- [1..1000], floor (fromIntegral x * 0.08) == a && floor (fromIntegral x * 0.1) == b]
    let answer = if null candidates then -1 else minimum candidates
    putStrLn $ show answer

