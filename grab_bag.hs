-- These examples are personal favourites

-- is "radar" a palindrome?
((==) <*> reverse) "radar"

-- a short fib definition
fix ((0:) . scanl (+) 1)

-- the hailstone algorithm
hailstone x
   | even x    = x `div` 2
   | otherwise = 3 * x + 1
