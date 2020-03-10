import qualified Data.ByteString.Char8 as BS
import qualified Data.Maybe as MA
import qualified Data.Map.Strict as M
import qualified Data.Vector.Mutable as VM
import Control.Monad
import Data.IORef

main = do
    (n, _) <- MA.fromJust . BS.readInt <$> BS.getLine
    m <- newIORef (0 :: Int)
    hm <- newIORef (M.empty :: M.Map BS.ByteString Int)
    forM [0..n-1] $ \_ -> do
        s <- BS.getLine
        modifyIORef' hm (\hm' -> case M.lookup s hm' of 
                                    Just v -> M.insert s (v + 1) hm'
                                    Nothing -> M.insert s 0 hm'
                        )
        now <- (M.! s) <$> readIORef hm
        modifyIORef' m (\m' -> if now > m' then now else m')
    m' <- readIORef m
    hm' <- readIORef hm
    forM_ (M.keys (M.filter (== m') hm')) $ \l -> 
        BS.putStrLn l
