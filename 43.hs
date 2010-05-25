import Data.List

listPandigit = filter (\a -> head a /= '0' ) fullList
  where fullList = permutations "1234567890"

isStrange :: String -> Bool
isStrange num = all (\(a,b) -> a `rem` b == 0) zipped
  where listNum = map (\a -> read $ take 3 $ drop a num) [1..7]
        listDivisor = [2,3,5,7,11,13,17]
        zipped = zip listNum listDivisor
        
cal = filter isStrange listPandigit

res = sum (map read cal)