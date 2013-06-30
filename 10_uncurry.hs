-- Here's where Haskell starts to get awesome. Let's imagine you have a list of
-- integer tuples, like [(1, 2), (3, 3), (4, 5), (6, 6)] and you want to get rid
-- of the ones that are duplicated (ie (3, 3) and (6, 6)). You might start with
-- 'fst' and 'snd' functions like so:
--
-- nonMatching :: [(Int, Int)] -> [(Int, Int)]
-- nonMatching = filter (\x -> (fst x) /= (snd x))
--
-- But there's a slick way to do that. Note that '/=' is a binary function that
-- returns a boolean:
-- (/=) :: a -> a -> Bool
-- You can use 'uncurry' to turn that a -> b -> c function into something that
-- works on pairs! Check out its type signature:
-- uncurry :: (a -> b -> c) -> (a, b) -> c

noMatches :: [(Int, Int)] -> [(Int, Int)]
noMatches = filter $ uncurry (/=)

-- => [(1,2),(4,5)]

-- If you want to keep the matches:
onlyMatches :: [(Int, Int)] -> [(Int, Int)]
onlyMatches = filter $ uncurry (==)

-- => [(3,3),(6,6)]

-- What?!? That's crazy! I just transformed a function!
-- Get down with your bad self.
