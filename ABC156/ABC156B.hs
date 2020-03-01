import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.List as L

main = do
    [n, k] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    putStrLn . show . length . L.takeWhile (/= 0) $ iterate (`div` k) n
