module Max where
    max' :: Int -> Int -> Int
    max' a b                    --Ahora usaremos condicionales
        |a == b = b             --Si a = b, el reslutado será cualquera de los dos
        |a > b = a              --Si a > b, el resultado será a
        |b > a = b              --Si b > a, el resultado será b