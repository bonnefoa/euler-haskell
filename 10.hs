
main = do putStrLn (show $ length (myRand [] [2..2*10^6]))

myRand primes [] = primes
myRand primes (x:xs) = myRand ([x]++primes) (filter (\a-> a `rem` x /=0) xs)