import Prelude hiding (length)

length :: [a] -> Integer
length [] = 0
length (x:xs) = 1 + length xs

-- With this example, we have to hide the import of the real length
-- function, so we can make our own. This is some pretty idiomatic list
-- recursion Haskell. The example comes from Mark P. Jones' Functional
-- Programming with Overloading and Higher-Order Polymorphism, p 4
-- (http://web.cecs.pdx.edu/~mpj/pubs/springschool95.pdf).
--
-- The [a] part means a list of arbitrary type. The length of the empty list
-- [] can naturally be defined as 0, and anything else is handled recursively.
-- The (x:xs) part is read like "ex" and "exes". That parenthetical expression
-- breaks the function's argument into the first item, and the rest of the list.
-- The first item counts as 1, and we add that to the length of the rest (xs).
