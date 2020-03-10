import qualified Data.IntMap.Lazy as MA

main = do
  [_, m] <- map read . words <$> getLine :: IO [Int]
  xs <- map ((\[a, b] -> (read a, read b)) . words) . lines <$> getContents :: IO ([(Int, Int)])
  let ab = MA.toList $ foldr (\(a, b) mp -> MA.insertWith (+) a b mp) MA.empty xs
  putStrLn . show $ buy ab (0, m)

buy :: [(Int, Int)] -> (Int, Int) -> Int
buy ((a, b):xs) (total,req)
  | req >= b = buy xs (total + a * b, req - b)
  | True = total + a * req
buy [] (total, _) = total
