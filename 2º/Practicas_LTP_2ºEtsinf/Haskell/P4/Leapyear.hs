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