import Primes
import Data.Ratio
import Data.List

mult = 10^6 `quot` 7
greaterNum = 3 * mult
greaterDen = 7 * mult

tot num den | gcd num den /= 1 = (tot (num-1) den)
            | otherwise = num % den
  

sol = numerator (tot greaterNum greaterNum)