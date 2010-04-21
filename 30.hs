module Euler
       where

import Data.List 

list = [10^5 .. 10^6]

disassemble :: Int -> [Int]
disassemble num = map read listChar
  where listChar = groupBy (\a b->False) (show num)

powerTab :: Int -> [Int] -> Int
powerTab pow listNum = foldl (\s a-> s+ a^pow) 0 listNum 
powerTab5 = powerTab 5
powerTab4 = powerTab 4

gal :: Int -> Int
gal = powerTab5 . disassemble 

calcul ls = powerList
  where powerList = map (\a -> (a, gal a)) ls
        
applyFilter = (filter (\a -> (fst a) == (snd a)) ) .  calcul 
        
applyFilterAndSum = (foldl (\s b->s+ (fst b)) 0) . applyFilter