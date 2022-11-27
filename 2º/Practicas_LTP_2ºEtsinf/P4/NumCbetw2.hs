module NumCbetw2 where
    import Data.Char                        --Importamos Data.char para poder trabajar con las funciones con chars
    numCbetw2 :: Char -> Char -> Int        --Decimos que lo que entrará a la función son dos caracteres
    numCbetw2 x y= abs((ord y - ord x) - 1) --Realizamos el ord de esos dos caracteres y le restamos uno para que sea el número de caracteres que hay entre medias
                                            --Ejemplo: a(97), c(99).   97 - 99 = 2 -> - 1 = 1 -> caracteres entre a y c.