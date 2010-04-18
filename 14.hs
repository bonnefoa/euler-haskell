module Main
       where

import Random
import IO
import Data.Word
import List
import Data.Int 

fifi :: Int64 -> Int64
fifi n | n < 0 = 1
fifi n | even n = n `quot` 2
fifi n | odd n = 3*n+1

produceChain :: Int64 ->[Int64]
produceChain 1 = []
produceChain n = 
  let current = fifi(n) 
  in  current : produceChain(current)

data Result = Result Int Int
              deriving (Show, Eq, Ord)

chaineWithSize (x:xs) list = chaineWithSize xs newList
  where chaine = produceChain x
        tuple = ((length chaine), x)
        newList = take 5 (reverse (sort (tuple:list)))
chaineWithSize [] list = list        



-- process :: (Integral a) => a -> a -> a
process :: Integer -> [(Integer,Integer)] -> [(Integer,Integer)]
process x list | x < 2 = list
process num list
   | isDiv && divided > 500 = process num (take 5 (tuple:list))
   | isDiv = process divided (take 5 (tuple:list))
   | otherwise = process (num*2) (list)
     where divided = (num - 1) `quot` 3
           isDiv = (num - 1) `rem` 3 == 0 
           tuple = (num, divided)


