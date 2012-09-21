import System.Environment

main = do
  [f,g] <- getArgs
  s     <- readFile f
  writeFile g s

-- That's a simple equivalent of the unix command `cp` (with no options, of
-- course).
