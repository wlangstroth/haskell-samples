-- Here's an example that uses a bunch of the functions from the prelude.
-- Pairing teams (represented by integers) into a round robin tournament.
-- You give it a number of teams `t` and it returns a list of team pairs

roundRobin :: Int -> [(Int, Int)]
roundRobin t = concatMap (filter extra . pair) rounds
  where
    (d, m) = t `divMod` 2
    pair x = take (d + m) $ zip x (reverse x)
    rounds = take (t + m - 1) $ iterate rotate [1..t + m]
    extra (x, y) = all (<= t) [x, y]

rotate :: [a] -> [a]
rotate [] = []
rotate (x:xs) = x : last xs : init xs

-- That's a pretty densely packed example, but it's good for demonstrating a
-- few prelude functions, and it makes a good puzzle.
-- Round robin tournaments work by pegging the first team in place and rotating
-- the rest of the teams like a tank tread next to the first team. For an
-- illustration, see
-- http://en.wikipedia.org/wiki/Round-robin_tournament#Scheduling_algorithm

-- Adapted from https://github.com/clux/tournament.hs/blob/31b23c1254bb871af16275d6dd523e4cbb7e7e36/Game/Tournament.hs#L166
