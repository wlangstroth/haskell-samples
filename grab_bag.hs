-- These examples are personal favourites, using Haskell to do bizarre things
-- in short order.

-- is "radar" a palindrome?
((==) <*> reverse) "radar"

-- a short fib definition
fix ((0:) . scanl (+) 1)
