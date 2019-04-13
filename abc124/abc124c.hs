main = do
  s <- getLine
  let a = length . filter id $ zipWith (/=) s (cycle ['0','1'])
  let b = length . filter id $ zipWith (/=) s (cycle ['1','0'])
  putStrLn . show $ min a b
