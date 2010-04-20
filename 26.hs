module Euler
       where
import Data.List
import Data.Ord

cycleDetection li@(x:xs) cur@(c:cs)
    |cur `isPrefixOf` li = cur
    |otherwise = cycleDetection xs (cur++[x])
cycleDetection (x:xs) [] = cycleDetection xs [x]
cycleDetection [] cur = []
                           
fra :: Double -> String
fra x = tail (tail (show (1/x)))


cal =  map (\a -> cycleDetection (fra a) []) [1 .. 1000] 

filteredList listCycle = filter sortFun zippedList
          where zippedList = zip listCycle [1 .. 1000]
                sortFun = (\l -> length (fst l)>0)

mapLength ::  [(String,Int)] -> [(Int,Int)] 
mapLength filteredList = map (\x -> (length (fst x), snd x)) filteredList

gou ::  [(Int,b)] -> [(Int,b)] 
gou gra = sortBy (comparing fst) gra

raaa = mapLength (filteredList  cal)