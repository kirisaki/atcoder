import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA

main = do
    s <- getLine
    putStrLn $ if s == "AAA" || s == "BBB" then "No" else "Yes"

