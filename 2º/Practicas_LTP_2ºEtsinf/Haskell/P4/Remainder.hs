module Remainder where
    remainder :: Int -> Int -> Int
    remainder a b 
        |a < b = a                      --Caso Base, a es menor que b
        |otherwise = remainder(a - b) b --Caso generico, a es mayor que b y se hacen restas hasta el caso base