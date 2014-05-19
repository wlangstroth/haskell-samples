import System.Environment

main :: IO ()
main = do
    [file] <- getArgs
    content <- readFile file
    putStrLn content

-- Still doing okay. getArgs returns a list of things, and in this case,
-- we only want the one thing we know is going to be there. It's not exactly
-- the most robust program ever, but it's very readable.
