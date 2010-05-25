module Primes
       where
import Data.List
import qualified Data.ByteString.Lazy.Char8 as L
import Data.Word

readDaFile  fileName = do
  inpStr <- L.readFile fileName
  let listNumbers = processFile inpStr
  return listNumbers
  
processFile :: L.ByteString -> [Int]
processFile = map read . filter (/= "") . filter (/= "\r\r") . concat . map (map L.unpack) . map (L.split ' ') . L.lines

primesIo = readDaFile  "primes1.txt"

primes :: [Integer]
primes = 2: 3: sieve (tail primes) [5,7..]
  where 
    sieve (p:ps) xs = h ++ sieve ps [x | x <- t, x `rem` p /= 0]  
      where (h,~(_:t)) = span (< p*p) xs
                          
                         