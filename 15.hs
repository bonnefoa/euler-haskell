module Main
       where

calcul 0 0 = 0
calcul 0 _ = 1
calcul _ 0 = 1
calcul x y 
  |x < y = 
    (calcul (x-1) y) + (calcul x (y-1))
calcul x y 
  |x == y = 
    2*(calcul (x-1) y)
calcul x y = 0

data GridPoint = GridPoint Int Int Int
getCostFromGrid :: Int -> Int -> [GridPoint] -> Maybe Int
getCostFromGrid x y (GridPoint gx gy cost:_)| x==gx && y == gy = Just cost
getCostFromGrid x y (_:xs) = getCostFromGrid x y xs
getCostFromGrid _ _ [] = Nothing

