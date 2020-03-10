main = do
  [c1, c2, c3, c4] <- getLine
  let x = read [c1, c2]
  let y = read [c3, c4]
  let x' = 0 < x && x < 13
  let y' = 0 < y && y < 13
  putStrLn $ case (x', y') of
    (True, True) -> "AMBIGUOUS"
    (False, True) -> "YYMM"
    (True, False) -> "MMYY"
    _ -> "NA"
