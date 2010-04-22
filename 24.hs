module Euler 
  where

import Data.List

res = head ( drop (10^6-1) (sort ( permutations "0123456789" )))

