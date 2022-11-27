module SumaFact where

    fact :: Int -> Int
    fact 0 = 1
    fact x = x * fact(x - 1)

    sumFact :: Int -> Int
    sumFact x 
        |x == 0 = 0                             --Caso Base llegamos a 0
        |otherwise = fact x + sumFact (x - 1)   --Realizamos la suma de fact y llamamos al método restando uno al atributo