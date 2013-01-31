fizzBuzz :: Int -> String
fizzBuzz n =
    case (n `rem` 3, n `rem` 5) of
         (0,0) -> "fizzbuzz"
         (0,_) -> "fizz"
         (_,0) -> "buzz"
         _     -> show n

runBuzz n = mapM_ (putStrLn . fizzBuzz) [1..n]

main = runBuzz 100

-- A cute solution made from one posted on StackOverflow by John Launchbury
-- http://stackoverflow.com/a/6957395/1656903
--
-- Note the use of the dot operator (.) to combine functions in a concise,
-- readable way. The action is left-to-right, so (putStrLn . fizzBuzz) is the
-- same as first applying fizzBuzz, then applying putStrLn.
--
-- mapM_ is a monadic map over [1..n]. The underscore at the end of the function
-- name indicates that it discards its return value.
