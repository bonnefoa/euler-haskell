module Euler
       where

nthPowerList n = filter (\a -> length (show a) == n) list
  where list = map (^n) [1..9]  

calcul = length (concat (map nthPowerList [1..100]))
