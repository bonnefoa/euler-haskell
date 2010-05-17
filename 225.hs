tribos = 1 : 1 : 1 : zipWith (+) tribos (zipWith (+) (tail tribos) (tail (tail tribos)))

aList = take 20000 tribos

isDivisor triList x = any (\a -> a `rem` x == 0) triList
cal = filter (not . isDivisor aList) [1,3..]

res = cal !! 124
