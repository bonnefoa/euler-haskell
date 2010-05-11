import Data.List

fac 1 = 1
fac n = n * (fac (n-1))

getSumDigits :: Int
getSumDigits = sum $ map read list
  where str = show $ fac 100
        list = groupBy (\a b -> False) str