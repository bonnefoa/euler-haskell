module Euler
       where
import Data.List

disassemble :: Int -> [String]
disassemble = (groupBy separate) . show
  
separate = (\a b -> False)

hasSameDigits :: Int -> Int -> Bool
hasSameDigits a b =  tailleA == tailleB && 
                     tailleInter == tailleA
                      where tailleA = length(show a)
                            tailleB = length(show b)
                            tailleInter = length(intersect (show a) (show b))
                            
isNumOkay :: [Int]-> Int -> Bool                            
isNumOkay nums x = all foldCheck tabNumToCheck
  where tabNumToCheck = map (*x) nums
        headTab = head tabNumToCheck
        foldCheck = (\a -> hasSameDigits a headTab)
        
calcul zarg =  filter (\a -> snd a) theMap 
  where theMap = map (\x ->(x,isNumOkay [2..6] x)) zarg
