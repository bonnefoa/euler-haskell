module Euler
       where

import Data.Eq
import Data.List

generatePrime res (x:xs) = generatePrime (res ++[x]) newList
  where newList = filter (\s -> s `rem` x /=0) xs
generatePrime res [] = res  

generatePanDigital list = filter (\s -> length (nub (show s)) == length (show s)) list

ga = generatePanDigital [10^8 .. 10^9]
