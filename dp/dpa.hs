import Data.Vector

main = do
    i <- read <$> getLine
    ns <- fromList . fmap read . words <$> getLine
    putStrLn . show $ cost (i - 1) ns

cost :: Int -> Vector Int -> Int
cost j ns = memo ! j
    where
        memo = fromList [cost' k ns | k <- [0..j]]
        cost' :: Int -> Vector Int -> Int
        cost' 0 ns = 0
        cost' 1 ns = abs $ ns ! 0 - ns ! 1
        cost' i ns = min (memo ! (i - 2) + abs (ns ! (i - 2) - ns ! i)) (memo ! (i - 1) + abs (ns ! (i - 1) - ns ! i))
