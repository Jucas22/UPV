module AddRange where
    addRange :: Int -> Int-> Int        --Intrroducimos dos ints y nos devuelve otro
    addRange x y = if x == y then x else    --Caso base, si el número x y son el mismo, devuelve uno de los dos
                   if x < y then x + (addRange(x + 1) y) else   --Caso genérico, si x<y se suma x a la solucion y se llama de nuevo a la función con x+1
                   addRange y x     --Forzamos el caso genérico invirtiendo el orden de los atributos