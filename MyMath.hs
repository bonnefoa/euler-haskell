module MyMath(
  isEven,
  isOdd
  )
       where

isEven x = x `rem` 2 == 0
isOdd = not . isEven

