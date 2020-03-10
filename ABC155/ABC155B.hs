import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.List as L

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    ans <- and . fmap (\n -> n `mod` 3 == 0 || n `mod` 5 == 0) . L.filter (\n -> n `mod` 2 == 0) . fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    putStrLn $ if ans then "APPROVED" else "DENIED"

