import Data.List
import Data.Maybe
import Data.Ord

tuples max = [(a,b,c) | c <- [1..max], a <- [1..c], b <- [1..a], a^2 + b^2 == c^2, a+b+c <= max ]
sumT (a,b,c) = a+b+c
pList max= map sumT (tuples max)

theList = (pList 1000)
pUnique = nub theList
pNumbers = map (\a -> (a, length $ elemIndices a theList)) pUnique


bigger :: (Int,Int) -> (Int,Int) -> Ordering
bigger (_,a) (_,b) = compare a b

sortByTuple xs = sortBy bigger xs


res = reverse $ sortByTuple pNumbers

