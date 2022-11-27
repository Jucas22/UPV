module EjP5 where

    --Ejercicio 3:
    divisores :: Int -> [Int]
    divisores a = [y | y <- [1..a], (mod a y) == 0]
    --Forma Recursiva:
    divisores' :: Int -> Int -> [Int] --Se tendrá que introducir un 1 que servirá como contador
    divisores' a b 
            |a == b = [b]
            |mod a b == 0 = b : divisores' a (b + 1)
            |otherwise = divisores' a (b + 1)

    --Ejercicio 4:
    member :: Int -> [Int] -> Bool
    member b (x:t) = elem b (x:t)
    
    --Ejercicio 5:
    isPrime :: Int -> Bool
    isPrime a
            |length (divisores a) == 2 = True
            |otherwise = False
    primes :: Int -> [Int]
    primes x = take x [y | y <- [1..], isPrime y]

    --Ejercicio 6:
    selectEvent :: [Int] -> [Int]
    selectEvent (x:t) = [y | y <- (x:t), mod y 2 == 0]

    --Ejercicio 7:
    selectEventPos :: [Int] -> [Int]
    selectEventPos list = [x | (x,y) <- zip list [0..], mod y 2 == 0]

    --Ejercicio 8:
    ins :: [Int] -> [Int]
    ins
    iSort :: [Int] -> [Int]
