module Euler15 
       where 

import Data.List
         
data Grid = Grid [Row]
  deriving (Show)
data Row = Row [Int]
  deriving (Show)

-- incrementGrid :: Grid -> Grid
-- incrementGrid (Grid rows@(r:rs)) = Grid (newRow:rows)
--  where newRow = getNextRow(r) 

buildGrid width (Grid []) = Grid $ [ (Row xs)]
  where xs = replicate width 1

getNextRow :: Row -> Row
getNextRow (Row xs) = Row $ scanr1 (+) xs

