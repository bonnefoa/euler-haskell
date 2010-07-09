import Data.List
import Data.Ord
import Primes 

function a b n = n^2 + a*n + b

listPrimes = take 1000 primes

primesListLength :: Integer -> Integer -> Int
primesListLength a b = length $ generatedPrimes `intersect` listPrimes 
  where generatedPrimes = map (function a b) [0..a]

listAb = reverse $ sortBy (comparing (abs . fst)) fullList
  where fullList = [(a,b) | a<-[-1000,-999..1000],b<- [-1000,-999..1000]]

resList = filter (\t->thrd t >79) tuples
  where tuples = map (\(a,b) -> (a,b,primesListLength a b)) listAb

thrd (a,b,c) = c