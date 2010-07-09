import Euler79
import Test.QuickCheck
import Data.List

prop_separatePairNum str = length str >1   ==> conTuple == str
  where lstTuple = separatePairOfNum str
        conTuple = (fst . head $ lstTuple) :  map snd lstTuple  

prop_hasTwoSimilarElem str = length str > 1 ==> hasTwoSimilarElem str str

prop_hasTwoSimilarElemBis str1 str2 = length str1 > 0 && length str2 > 0 ==> hasTwoSimilarElem arr1 arr2
  where arr1 = str1 ++ "00"
        arr2 = str2 ++ "00"

prop_splitByElem str1 str2 = length str1 > 0 && length str2 > 0
    ==> (\(a,b,c) -> a++b++c) (splitByElem str1 str2) == str1

