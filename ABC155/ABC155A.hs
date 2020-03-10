import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.List as L

main = do
    xs <- L.sort . fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    putStrLn $ if L.length (L.nub xs) == 2 then "Yes" else "No"

