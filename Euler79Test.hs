import Euler79
import Test.QuickCheck
import Data.List

prop_separateNum num = num >0 ==> (concat . map show . separateNum $ num)  == show num

prop_createTuple lst = length lst > 1 ==>  lst `intersect` regLst == lst
  where regLst = concat $  map (\(a,b) -> [a,b] )  $ createTuple  lst 



--prop_searchMin pos cur next = min next == snd res
-- where res =  searchOptimizedPath pos [] next

