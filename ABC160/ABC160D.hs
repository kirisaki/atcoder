import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    [n, x, y] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    putStrLn $ show xss

