module Euler12
  where

import Primes

getTrimWithXDiv x = head $ dropWhile (\a -> (length $ decFact a) < x) triNums

triNums :: [Integer]
--triNums = 1 : map (\n -> triNums !! (n-1) + 1 + toInteger n) [1..]
triNums = map (\n -> n*(n+1) `div` 2) [1..]

-- decFact n =filter (\x -> n `rem` x == 0)   [1..n] 
decFact ::Integer -> [Integer]
decFact n = [1,n] ++ decFactP n


decFactP :: Integer -> [Integer]
decFactP num | num `elem` thePrimes = [num] 
            | otherwise = decFact' num thePrimes
 where thePrimes = takeWhile (<=num) primes

decFact' :: Integer -> [Integer] -> [Integer]
decFact' 1 _ = []
decFact' num listPrimes = nextDiv : decFact' nextNum nextPrimesList
  where nextDiv = head nextPrimesList
        nextPrimesList = dropWhile (\a -> num `rem` a /= 0) listPrimes
        nextNum = num `quot` nextDiv

