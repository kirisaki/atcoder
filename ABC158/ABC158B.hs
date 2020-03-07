import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    [n, a, b] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    let m = n `div` (a + b) * a
    let m' = min (n `mod` (a + b)) a 
    putStrLn $ show (m + m')

