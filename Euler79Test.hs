import Euler79
import Test.QuickCheck
import Data.List

prop_separateNum num = num >0 ==> (concat . map show . separateNum $ num)  == show num

prop_createTuple lst = length lst > 1 ==>  lst `intersect` lstFromTuple == lst
  where lstFromTuple = concat $  map (\(a,b) -> [a,b] )  $ createTuple  lst 

prop_eachNumberShouldAppearTwice lst = length lst > 2 ==> all (\a -> length a >=2) (group . sort $ lstFromTuple) 
  where lstFromTuple = concat $  map (\(a,b) -> [a,b] )  $ createTuple  lst 


--prop_searchMin pos cur next = min next == snd res
-- where res =  searchOptimizedPath pos [] next

