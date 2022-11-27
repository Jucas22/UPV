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

--Ejercicio 4:
