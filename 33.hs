import Data.List
import Data.Ratio

points = [(a,b) | a <-[10..99],b<- [10..99], a < b, containsSimilarNum (a,b), (a `rem` 10) /= 0 && (b `rem` 10) /= 0 ]

containsSimilarNum :: (Int,Int) -> Bool
containsSimilarNum (a,b) = any (`elem` num1) num2
  where num1 = show a
        num2 = show b

removeSimNum :: (String,String) -> (String,String)
removeSimNum (a,b) = (simNum `delete` a, simNum  `delete` b)
    where simNum = head (a `intersect` b)

convertTupleToString (a,b) = (show a,show b)
convertTupleToInt (a,b) = (read a,read b)
convertDoubleTupleToInt :: ((String,String), (String,String)) -> ((Int,Int),(Int,Int))
convertDoubleTupleToInt ((a,b),(c,d)) = ((read a,read b),((read c),(read d)))
    
cal = map convertTupleToString points
calZip = zip cal filteredList
  where filteredList = map removeSimNum cal

res = filter isEqualsFractionne theIntList
  where theIntList = map convertDoubleTupleToInt calZip

denProduct = map getRatioFromDoubleTuple res

ratMul :: Ratio Int -> Ratio Int -> Ratio Int
ratMul a b = ((numerator a) * (numerator b)) % ((denominator a) * (denominator b))

commonDen = foldl1 ratMul denProduct

getRatioFromDoubleTuple :: ((Int,Int),(Int,Int)) -> Ratio Int
getRatioFromDoubleTuple ((a,b),_) = a%b

isEqualsFractionne :: ((Int,Int), (Int,Int)) -> Bool
isEqualsFractionne ((a,b),(c,d)) = (a % b) == (c % d)

