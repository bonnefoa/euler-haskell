import Data.List 

combi :: Int -> Int -> Integer
combi n r = num `quot` den
 where num = fac !! n
       den = (fac !! r) * (fac !! (n - r)) 

fac :: [Integer]
fac = 1 :  scanl (*) 1 [2..]

couples max = [(n,r) | n <- [1..100] , r <- [1..n], combi n r > max]

res = length $ couples (10^6)
