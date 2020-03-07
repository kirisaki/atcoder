import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    [n, p] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    (s, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    putStrLn $ show xss


