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

-- Strictly speaking, this is an abuse of the type system. So you probably 
-- shouldn't do this. But it does demonstrate a few concepts quickly.
-- To try out the example, load into ghci
-- > :l 13_type_class_fun.hs
-- > let h = Length 12.2 Inches
-- > let w = Length 13.5 Centimetres
-- > let d = Dimensions h w
-- > d
-- 12¼" x 13.5 cm
