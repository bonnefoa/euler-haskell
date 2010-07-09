import Data.List 

pentagonal n = n * (3*n -1)/2
pentagonalList = map pentagonal [1..]
isPentagonal num = num `elem` (takeWhile (<=num) pentagonalList)

candidateList = [x | x<-filter isPentagonal [1,4..] ]

isSumPentagonal n m = isPentagonal (n +m)
isDiffPentagonal n m = isPentagonal(n-m)

cal = filter (not .null . snd) $  map (\a -> (a,findCandidate a)) pentagonalList
--cal = map (\a -> (a,findCandidate a)) pentagonalList

findCandidate n = filter (isDiffPentagonal n)  penList
 where penList = takeWhile (<n) candidateList
       
theList = [1,4..]       

process (x:y:z:xs) | x+y < z = (x,y,z) : process (y:z:xs)
                   | otherwise = process (y:z:xs)
