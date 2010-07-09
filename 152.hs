module Euler
       where

import Data.List
import Data.Ratio

mulWithInverse :: [Int] -> Ratio Int
mulWithInverse = foldl (\a b -> a + 1%(b^2)) 0

testMulti :: [Int] -> [[Int]]
testMulti cur max = filter (\a -> mulWithInverse a == 1%2) possibilities
  where possibilities = permutations listNum
        
        
  
  