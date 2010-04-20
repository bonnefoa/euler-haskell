module Euler
       where


listGen list = concat ( map (\a -> subLister a) list)
  where subLister x = map (\y -> tupler x y) list
        tupler x y = (x,y)
        
        