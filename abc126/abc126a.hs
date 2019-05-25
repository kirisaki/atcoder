import Data.Vector as V
import Data.Char

main = do
  [n, k] <- fmap read . words <$> getLine
  s <- V.fromList <$> getLine
  let c = toLower $ s ! (k - 1)
  putStrLn . V.toList $ s // [(k - 1, c)]
