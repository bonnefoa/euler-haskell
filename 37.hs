module Euler
       where

import Data.List
import Data.Eq

separate :: String -> [String]
separate = groupBy (\a b -> False)

disassemble :: Int -> [Int]
disassemble num = map read separatedStr 
  where str = show num
        separatedStr = separate str 
        

generatePrimes :: [Int] -> [Int] -> [Int]

generatePrimes cur (1:xs) = generatePrimes (cur++[1]) xs         
generatePrimes cur (x:xs) = generatePrimes (cur++[x]) filteredList
  where filteredList = filter (\a -> a `rem` x /=0) xs
generatePrimes cur [] = cur        

getPrimeList max = generatePrimes [] [1 .. max]
tenFirstPrimes = getPrimeList 10
testPrimeList = (getPrimeList 10000) \\ tenFirstPrimes

isLastNumberAPrime :: Int -> Bool
isLastNumberAPrime num = last (disassemble num) `elem` tenFirstPrimes
isFirstNumberAPrime :: Int -> Bool
isFirstNumberAPrime num = head (disassemble num) `elem` tenFirstPrimes
contains0 num = any (==0) (disassemble num) 

concNum :: [Int] -> Int
concNum li =  map read ( concat listStr)
  where listStr = (map show li) 

truncateFromLeft :: Int -> [Int] -> Bool
truncateFromLeft num primeListElligible 
  | inList && hasNextNum = truncateFromLeft nextNum primeListElligible
  | inList && not hasNextNum = True
  | not inList = False
    where inList = num `elem` primeListElligible
          nextNum =concNum nextNumInTabs
          nextNumInTabs = (tail (disassemble num))
          hasNextNum = not (null nextNumInTabs)

elligiblePrimes = filterFirstEleme . filterLastElem . filterZero
  where filterFirstEleme = filter isFirstNumberAPrime  
        filterLastElem = filter isLastNumberAPrime
        filterZero = filter (not. contains0 )

  