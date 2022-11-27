module BinDec where
    binDec :: [Int] -> Int
    binDec (x:[]) = x   --Caso base: lista vacía
    binDec (x:y) = x + binDec y * 2  --Caso general primer dígito + el siguiente * 2