-- Here are two ways to reverse a list

reverse :: [a] -> [a]
reverse =  foldl (flip (:)) []

-- That one is obviously the cool one, but here's one that might be easier to
-- read:

reverse :: [a] -> [a]
reverse l =  rev l []
  where
    rev []     a = a
    rev (x:xs) a = rev xs (x:a)

-- Both of those are found right in the Haskell Prelude (standard library).
