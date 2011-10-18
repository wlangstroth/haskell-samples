import System.IO
import System.Environment

main :: IO ()
main = do
    [f] <- getArgs
    c <- readFile f
    putStrLn c
