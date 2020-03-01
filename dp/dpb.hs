import Data.Vector
import Data.Maybe

main = do
    [i, k] <- fmap read . words<$> getLine
    ns <- fromList . fmap read . words <$> getLine
    putStrLn . show $ cost k (i - 1) ns

cost :: Int -> Int -> Vector Int -> Int
cost k j ns = memo ! j
    where
        memo = fromList [cost' l ns | l <- [0..j]]
        cost' :: Int -> Vector Int -> Int
        cost' 0 ns = 0
        cost' 1 ns = abs $ ns ! 0 - ns ! 1
        cost' i ns = Prelude.minimum memo'
            where
              memo' = fromList $ catMaybes [case memo !? (i - m) of 
                                  Just x -> Just $ x + abs (ns ! (i - m) - ns ! i)
                                  Nothing -> Nothing
                                | m <- [1..k]]

