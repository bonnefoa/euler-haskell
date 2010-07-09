module Euler
       where
triangle x = x * (x + 1) `quot` 2
square x = x*x
pentagonal x = x * (3*x-1) `quot` 2
hexagonal x = x * (2*x - 1)
hepatgonal x = x * (5*x-3) `quot` 2
octagonal x = x *(3*x -2)

isPairCyclic :: (Integer, Integer) ->Bool
isPairCyclic (x,y) = twoLast x == twoFirst y

isTabCyclic :: [Integer] -> Bool
isTabCyclic [] = True
isCyclic (x:xs) | null xs = True
                | twoLast x == twoFirst (head xs) = isCyclic xs
                | otherwise = False
  
twoFirst x = x `quot` 100
twoLast x = x `rem` 100

generate4digit :: (Integer->Integer) -> [Integer]
generate4digit func = infUntil4
  where
    infFrom4 = dropWhile (\a -> length (show a) < 4) infList
    infUntil4 = takeWhile (\a -> length (show a) <5) infFrom4
    infList = map func [1..]
  
generateAllList = map generate4digit [triangle,square, pentagonal, hexagonal, hepatgonal, octagonal]
  
getCyclesCouple :: Integer -> [Integer] -> [[Integer]]                  
getCyclesCouple x li = map (\a -> x:a:[] ) list
  where list = filter (\a -> isPairCyclic (x,a)) li
                  

