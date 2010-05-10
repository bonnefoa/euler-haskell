module Euler
       where

data Tree a= Leaf a
          | Branch (Tree a) a (Tree a)
            deriving (Show)
            
convertTabsInTree :: [Int] -> [Int] -> [Tree Int]
convertTabsInTree top bottom
  | null bottom = map Leaf top
            

test = convertTabsInTree [7, 6] []
