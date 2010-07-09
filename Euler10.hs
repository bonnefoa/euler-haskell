main = do print $ euler010 2000000
 
euler010 :: Int -> Integer
euler010 n = sum $ map toInteger $ takeWhile (< n) primes
 
primes :: [Int]
primes = 2 : filter (isPrime primes) [3..]
 
isPrime :: [Int] -> Int -> Bool
isPrime primes x = all ((/= 0) . mod x) 
    $ takeWhile (<= (floor $ sqrt $ fromIntegral x)) primes
