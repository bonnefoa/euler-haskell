module Main
       where
import Data.List


-- calcul cur end grid | cur < end = 
data  Point x y cost = Point Int Int Int 
                       deriving(Show)

findCost x y grid =  find (gridPredicate x y) grid
gridPredicate x y (Point px py _) = x == px && y == py
getCost Just (Point _ _ cost) = cost

func 0 y grid = (Point 0 y 1) : grid
func x 0 grid = (Point x 1 1) : grid
func x y grid = (Point x y (costX + costY)):grid
  where costX = func (x-1) y grid
        costY = func x (y-1) grid


