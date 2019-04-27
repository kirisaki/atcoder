data Tree = Nil | Node Tree Int Tree deriving Show

make :: [Tree] -> [Tree]
make [] = [Nil]
make [x] = [x]
make (x@(Node _ nx _):y@(Node _ ny _):zs) = Node x (gcd nx ny) y : make zs
make [x, Nil] = [x]

build :: [Tree] -> Tree
build [] = Nil
build [x] = x
build xs = build $ make xs



main = do
  getLine
  as <- map (\s -> Node Nil (read s) Nil) . words <$> getLine 
  putStrLn . show $ build as
  
