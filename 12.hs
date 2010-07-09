triNumber n = sum [1 .. n]
listTriNum :: Int -> [Int]
listTriNum start = map triNumber [start .. ]

listDivisor :: Int -> [Int]
listDivisor n = filter (\a -> n `rem` a ==0) [1..n]

calcul max = head $ dropWhile (\a -> (length $ listDivisor a) < max) (listTriNum start)
