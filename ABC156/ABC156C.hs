import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.Vector.Unboxed as V

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    xs' <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    let m = maximum xs'
    let xs = V.fromList xs'
    putStrLn . show . minimum $ fmap (\p -> V.foldl (\total x -> total + (x - p)^2) 0 xs) [1..m]
