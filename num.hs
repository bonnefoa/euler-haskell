module Main
       where

import IO

main = do
  ra <- askNumber
  print ra
  processNumber ra

askNumber = do
  putStrLn "Give me a number (0 to stop)"
  ioNum <- getLine
  let num = read ioNum
  if num == 0
    then return []
    else do
      rest <- askNumber
      return (num : rest)
      
processNumber list = do
  let sum = show ( foldr (+) 0 list )
  let product = show (foldr (*) 1 list)
  let factorial = map fac list
  putStrLn("The sum is " ++ sum)
  putStrLn("The product is " ++ product)
  putStrLn(show factorial)
  
fac 0 = 1
fac n = n * fac(n-1)

thesum 0 = 0
thesum n = n + thesum (n-1)

conver n = (+ read n)

-- ny = foldr (conver) 0 (show(fac 100))