main :: IO ()
main = do
  putStrLn "There. That wasn't so bad, was it?"

-- Note: the 'do' above doesn't need to go there. We could have written
-- main = putStrLn "The same thing"
-- but do notation is usually what happens in main, so we might as well.
