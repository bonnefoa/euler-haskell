module Euler
       where

import Data.List

infiniteToString = map (show) list
  where list = [1 .. ]
        
conc :: [String] -> String
conc list = concat list

