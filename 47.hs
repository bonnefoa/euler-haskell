import Primes
import Data.List

decFact :: Integer -> [Integer]
decFact num = decFact' num primes

decFact' :: Integer -> [Integer] -> [Integer]
decFact' 1 _ = []
decFact' num listPrimes = nextDiv : decFact' nextNum nextPrimesList
  where nextDiv = head nextPrimesList
        nextPrimesList = dropWhile (\a -> num `rem` a /= 0) listPrimes
        nextNum = num `quot` nextDiv
        
distNumber :: [Integer] -> Int        
distNumber = length . nub

facList distFact = [ (a,x) | a <- [2..], let x = decFact a, distNumber x == distFact]
simpleList = take 10 (facList 2)
filterHave4Consecutive :: [(Integer,[Integer])] -> [(Integer,[Integer])]
filterHave4Consecutive (x:y:z:u:xs) | isFollowing [x,y,z,u] = x : y : z : u : filterHave4Consecutive (xs)
                               | otherwise = filterHave4Consecutive (y:z:u:xs)
filterHave4Consecutive _ = []

isFollowing :: [(Integer,[Integer])] -> Bool
isFollowing (x:[]) = True
isFollowing (x:y:[]) = fst x +1 == fst y                                   
isFollowing (x:y:xs) | fst x +1 == fst y = isFollowing (x:xs)
                     | otherwise = False
isFollowing _ = True
