module Euler
       where

import Data.List

fib 1 = 1 
fib 2 = 1 
fib n = (fib n-1) + (fib n-2)

fibs = 1 : 1 : zipWith (+) fibs (tail fibs)

ga max = find (\s -> s > max) fibs
gi max = findIndex (\s -> s > max) fibs
-- takeWhile (\s -> s < 10^1000) fibs