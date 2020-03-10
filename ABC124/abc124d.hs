import Data.List as L
import Data.Vector as V
main = do
  [n, k] <- L.map read . words <$> getLine :: IO [Int]
  s <- V.fromList . L.map L.length . L.group <$> getLine
  let l = 1 + (min k $ V.length s)
  putStrLn . show . (+ (l-1)) . L.maximum $ L.map (\i -> V.sum (V.slice i l s)) [0..V.length s-l]

