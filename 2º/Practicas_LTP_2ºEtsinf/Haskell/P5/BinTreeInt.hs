module BinTreeInt where
    data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt deriving Show
    
    --Ejercicio 14:
    insTree :: Int -> BinTreeInt -> BinTreeInt

    insTree x (Void) = (Node x Void Void)
    insTree x (Node num bin1 bin2)
        | (num == x) = (Node x bin1 bin2)
        | (num > x) = (Node num (insTree x bin1) bin2)
        | otherwise  = (Node num bin1 (insTree x bin2))

    --Ejercicio 15:
    creaTree :: [Int] -> BinTreeInt

    creaTree [] = Void
    creaTree (x:xs) = (insTree x (creaTree xs))

    --Ejercicio 16:
    treeElem :: Int -> BinTreeInt -> Bool

    treeElem x (Void) = False
    treeElem x (Node num bin1 bin2)
        | x == num = True
        | x < num = (treeElem x bin1)
        | otherwise = (treeElem x bin2)

--AMPLIACIÓN:

    --Ejercicio 21:
    
    dupElem :: BinTreeInt -> BinTreeInt
    dupElem (Node num Void Void) = (Node (num + num) Void Void)
    dupElem (Node num bin1 Void) = (Node (num + num) (dupElem bin1) Void)
    dupElem (Node num Void bin2) = (Node (num + num) Void (dupElem bin2))
    dupElem (Node num bin1 bin2) = (Node (num + num) (dupElem bin1) (dupElem bin2))