import Data.List

isPalindrome :: Int -> Bool
isPalindrome a = a == fun a
  where fun = read . reverse . show

