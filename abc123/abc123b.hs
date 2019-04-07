main = do
  xs <- map read . lines <$> getContents
  putStrLn . show $ sum (map (\x -> 10 * (ceiling $ toRational x / 10)) xs) + minimum' ([x `mod` 10 | x <- xs, x `mod` 10 /= 0]) - 10

minimum' [] = 10
minimum' x = minimum x
