module Euler15 
       where 

import Data.List
         
data Grid = Grid [Row]
data Row = Row [Integer]
  deriving (Show)

instance Show Grid where
  show (Grid rows) = foldl (\a b -> a++ "\n" ++ show b) "" rows

buildRes :: Int -> Grid
buildRes maxi = foldl (\a b-> buildGrid maxi a) (Grid []) [1..maxi]

buildGrid :: Int -> Grid -> Grid
buildGrid width (Grid rows@(row:_)) = Grid $ nextRow : rows
  where nextRow = getNextRow row
buildGrid width (Grid []) = Grid $ [ (Row xs)]
  where xs = replicate width 1

getNextRow :: Row -> Row
getNextRow (Row xs) = Row $ scanr1 (+) xs

res = theRes
  where (Grid rows) =  buildRes 21
        (Row (theRes:_)) = head rows
