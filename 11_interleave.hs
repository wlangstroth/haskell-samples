-- This is one I would have thought would be in Data.List, but it's not

interleave :: [a] -> [a] -> [a]
interleave [] ys = ys
interleave (x:xs) ys = x : interleave ys xs

-- Really nice way to interleave two lists into one, found here:
-- http://stackoverflow.com/a/3987188/1656903
