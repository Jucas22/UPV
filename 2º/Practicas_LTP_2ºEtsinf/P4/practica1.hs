module Nextchar where
    import Data.Char
    nextchar :: Char -> Char
    nextchar c = chr ((ord c) + 1)

module Fact where
    fact :: Int -> Int
    fact 0 = 1
    fact x = x * fact(x - 1)

--Ejercicio 1:
module NumCbetw2 where
    import Data.Char                        --Importamos Data.char para poder trabajar con las funciones con chars
    numCbetw2 :: Char -> Char -> Int        --Decimos que lo que entrará a la función son dos caracteres
    numCbetw2 x y= abs((ord y - ord x) - 1) --Realizamos el ord de esos dos caracteres y le restamos uno para que sea el número de caracteres que hay entre medias
                                            --Ejemplo: a(97), c(99).   97 - 99 = 2 -> - 1 = 1 -> caracteres entre a y c.

--Ejercicio 2:
module AddRange where
    addRange :: Int -> Int-> Int        --Intrroducimos dos ints y nos devuelve otro
    addRange x y = if x == y then x else    --Caso base, si el número x y son el mismo, devuelve uno de los dos
                   if x < y then x + (addRange(x + 1) y) else   --Caso genérico, si x<y se suma x a la solucion y se llama de nuevo a la función con x+1
                   addRange y x     --Forzamos el caso genérico invirtiendo el orden de los atributos

--Ejercicio 3:
module Max where
    max' :: Int -> Int -> Int
    max' a b                    --Ahora usaremos condicionales
        |a == b = b             --Si a = b, el reslutado será cualquera de los dos
        |a > b = a              --Si a > b, el resultado será a
        |b > a = b              --Si b > a, el resultado será bç

--Ejercicio 4 - 5:
module Leapyear where
    leapyear :: Int -> Bool
    leapyear x
        |mod x 4 == 0 = if mod x 400 == 0 then True else        --Primero si x es múltiplo de 4, vemos si también es múltiplo de 400, o de 100
                        if mod x 100 == 0 then False else True
        |otherwise = False                                      --Todos aquellos que no sean múltiplos de 4 devolverán false

    daysAmonth :: Int -> Int -> Int
    daysAmonth a b
        |(a == 2) && (leapyear b)  = 29
        |a == 1 || a == 3 || a == 5 || a == 7 || a == 8 || a == 10 || a == 12 = 31
        |a == 4 || a == 6 || a == 9 || a == 11 = 30
        |otherwise = 28

--Ejercicio 6:
module Remainder where
    remainder :: Int -> Int -> Int
    remainder a b 
        |a < b = a                      --Caso Base, a es menor que b
        |otherwise = remainder(a - b) b --Caso generico, a es mayor que b y se hacen restas hasta el caso base

--Ejercicio 7:
module SumaFact where

    fact :: Int -> Int
    fact 0 = 1
    fact x = x * fact(x - 1)

    sumFact :: Int -> Int
    sumFact x 
        |x == 0 = 0                             --Caso Base llegamos a 0
        |otherwise = fact x + sumFact (x - 1)   --Realizamos la suma de fact y llamamos al método restando uno al atributo