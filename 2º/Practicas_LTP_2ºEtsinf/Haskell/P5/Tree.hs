module Tree where

    data Tree a = Leaf a | Branch (Tree a) (Tree a) deriving Show
    
    --Ejercicio 12:
    symetric :: Tree a -> Tree a
    symetric (Leaf a) = Leaf a
    symetric (Branch a b) = Branch (symetric b) (symetric a)

    --Ejercicio 13:
    listToTree :: [a] -> Tree a
    listToTree (x:y:resto)
        |(null resto) = (Branch (Leaf x) (Leaf y))
        |otherwise = (Branch (Leaf x) (Branch (Leaf y) (listToTree resto) ) )

    treeToList :: Tree a -> [a]
    treeToList (Leaf a) = [a]
    treeToList (Branch a b) = (treeToList a) ++ (treeToList b)

--AMPLIACIÓN:
    --Ejercicio 22:
    countProperty :: (a -> bool) -> (Tree a) -> Int
    countProperty (a -> bool) (Leaf a)
        | bool = 1
        | otherwise = 0
    countProperty (a -> bool) (Branch t1 t2) = (countProperty a -> bool t1) + (countProperty a -> bool t2)