import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.List as L
import Data.Vector as V

main = do
    as1<- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    as2 <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    as3 <- fmap (fst . MA.fromJust . BS.readInt) . BS.words <$> BS.getLine
    let as = fromList $ as1 L.++ as2 L.++ as3
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    xs <- V.fromList . fmap (fst . MA.fromJust . BS.readInt) .BS.lines <$> BS.getContents
    let ixs = V.findIndices (\x -> V.elem x xs) as
    let ys = V.update_ (V.fromList $ L.replicate 9 False) ixs (V.fromList (L.replicate (V.length ixs) True))
    let row1 = ys ! 0 && ys ! 1 && ys ! 2
    let row2 = ys ! 3 && ys ! 4 && ys ! 5
    let row3 = ys ! 6 && ys ! 7 && ys ! 8
    let col1 = ys ! 0 && ys ! 3 && ys ! 6
    let col2 = ys ! 1 && ys ! 4 && ys ! 7
    let col3 = ys ! 2 && ys ! 5 && ys ! 8
    let dia1 = ys ! 0 && ys ! 4 && ys ! 8
    let dia2 = ys ! 2 && ys ! 4 && ys ! 6
    putStrLn $ if row1 || row2 || row3 || col1 || col2 || col3 || dia1 || dia2 then "Yes" else "No"


