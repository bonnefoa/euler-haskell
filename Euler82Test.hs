import Test.QuickCheck
import Euler82

prop_searchMin pos cur next = min next == snd res
 where res =  searchOptimizedPath pos [] next

prop_getPath_maxbounded pos xs = all (\(a,b) -> a <= b)
  where res = getPathCostForCol pos xs
        zipped = zip xs res
prop_getPath_minbounded pos xs = all (\(a,b) -> a >= b)
  where res = getPathCostForCol pos xs
        zipped = zip xs res
