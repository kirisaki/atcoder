import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA


main = do
    putStrLn "get one number"
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    putStrLn . show $ n

    putStrLn "get multiple numbers"
    [n, r] <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    putStrLn $ show n ++ " " ++ show r

    putStrLn "get multiple lines"
    xss <- fmap (fmap (fst . MA.fromJust . BS.readInt)) . fmap BS.words . BS.lines <$> BS.getContents
    putStrLn $ show xss

