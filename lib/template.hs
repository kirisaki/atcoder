import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    [n, r] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    xss <- fmap (fmap (fst . MA.fromJust . BS.readInt)) . fmap BS.words . BS.lines <$> BS.getContents
    putStrLn $ show xss

