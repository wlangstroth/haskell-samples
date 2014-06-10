data Unit = Centimetres | Inches
data Length = Length Double Unit
data Dimensions = Dimensions Length Length

instance Show Measurement where
    show (Length len Centimetres) = show len ++ " cm"
    show (Length len Inches) = frac len ++ "\""

frac :: Double -> String
frac d
    | decimalPart  < 0.5 = addFrac "¼"
    | decimalPart == 0.5 = addFrac "½"
    | decimalPart  > 0.5 = addFrac "¾"
  where
    decimalPart = d - (fromIntegral $ floor d)
    addFrac s = show (floor d) ++ s

instance Show Dimensions where
    show (Dimensions height width) = show height ++ " x " ++ show width

-- See the related blog post (http://www.langstroth.net/posts/more-haskell) for
-- more details, but the example is meant to show how type classes are useful
-- even for a fairly mundane task that ordinary programmers might face:
-- formatting numbers.
-- To try out the example, load into ghci
-- > :l 13_type_class_fun.hs
-- > let h = Length 12.2 Inches
-- > let w = Length 13.5 Centimetres
-- > let d = Dimensions h w
-- > d
-- 12¼" x 13.5 cm
