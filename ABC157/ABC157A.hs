import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    putStrLn . show $ (n + 1) `div` 2


