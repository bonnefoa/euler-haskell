module Euler
       where

import Data.Eq
import Data.List


generatePrime :: [Int] -> [Int] -> [Int]
generatePrime res (x:xs)  = generatePrime (res ++[x]) newList
  where 
    step = x+x
    max = if (null xs) then x
            else last xs
    toDelete = [x,step .. max]
--    newList = filter (\s -> s `rem` x /=0) xs
    newList = xs \\ toDelete
generatePrime res [] = res  

generatePanDigital list = filter (\s -> length (nub (show s)) == length (show s)) list

ga = generatePanDigital [10^8 .. 10^9]

primes :: [Integer]
primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x | x <- xs, x `mod` p /= 0]  
                             -- or:  filter ((/=0).(`mod`p)) xs 

primesList = dropWhile (>10^9) (takeWhile (<10^10) primes)

-- graou = 