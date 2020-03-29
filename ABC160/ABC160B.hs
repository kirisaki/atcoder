import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    (x, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    let a = x `div` 500 * 1000
    let b = x `mod` 500 `div` 5 * 5
    putStrLn . show $ a + b

