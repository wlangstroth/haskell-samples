main :: IO ()
main = do
    putStrLn "Hi there! What's your name?"
    input <- getLine
    putStrLn $ replyTo input

replyTo :: String -> String
replyTo name =
    "Pleased to meet you, " ++ name ++ ".\n" ++
    "Your name contains " ++ letterCount ++ " letters."
  where letterCount = show (length name)

-- This one's a re-rendering of the second example in Chapter 7 of Real World
-- Haskell. It demonstrates some more interaction with the command line. You can
-- think of the $ as a left parenthesis, so `putStrLn $ replyTo input` is the same
-- as `putStrLn (replyTo input)`.
