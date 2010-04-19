module Euler
       where
import Data.List
import Data.Ord

cycleDetection li@(x:xs) cur@(c:cs)
    |cur `isPrefixOf` li = cur
    |otherwise = cycleDetection xs (cur++[x])
cycleDetection (x:xs) [] = cycleDetection xs [x]
cycleDetection [] cur = []
                           
fra x = tail (tail (show (1/x)))

cal =  map (\a -> cycleDetection (fra a) []) [1 .. 1000] 

filteredList listCycle = filter sortFun zippedList
          where zippedList = zip listCycle [1 .. 1000]
                sortFun = (\l -> length (fst l)>0)

gra ::  [(String,Int)] -> [(Int,Int)] 
gra filteredList = map ((length . fst,snd)) filteredList

gou ::  [([Char],b)] -> [([Char],b)] 
gou gra = sortBy (comparing fst) gra

