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
    ins :: Int -> [Int] -> [Int]
    ins x [] = [x]
    ins num (y:ys) --pg50
        |y >= num = (num:y:ys)
        |otherwise = y:(ins num ys) 
    iSort :: [Int] -> [Int]
    iSort [] = []
    iSort (y:ys) = ins y (iSort ys)

    --Ejercicio 9:
    doubleAll :: [Int] -> [Int]
    doubleAll list = map (*2) list

    --Ejercicio 10:
    map' :: (a -> b) -> [a] -> [b]
    map' _ [] = []
    map' f (x:xs) = f x : map f xs

    filter' :: (a -> Bool) -> [a] -> [a]
    filter' _ [] = []
    filter' p (x:xs)
        | p x       = x : filter p xs
        | otherwise = filter p xs
    
--Apartado 3:

    type Person = String
    type Book = String
    type Database = [(Person,Book)]

    --Libros que tiene una persona en concreto:
    obtain :: Database -> Person -> [Book]
    obtain dBase thisPerson = [book | (person,book) <- dBase, person == thisPerson]

    --Ejercicio 11: Realizar un prestamo
    borrow :: Database -> Book -> Person -> Database
    borrow db b p = db ++ [(p, b)]

    return' :: Database -> (Person, Book) -> Database
    return' db t = [t' | t' <- db, t' /= t]


--AMPLIACIÓN:

    --Ejercicio 17:
    repeated :: Int -> [Int] -> Int
    repeated x [] = 0
    repeated x (y:ys)
        | x == y = 1 + repeated x ys
        | otherwise = repeated x ys

    --Ejercicio 18:
    concat' :: [[a]] -> [a]
    concat' [] = []
    concat' (x:xs) = x ++ (concat' xs)