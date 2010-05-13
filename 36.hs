import Data.List
import Test.QuickCheck

isPalindrome :: Int -> Bool
isPalindrome num = reverse str == str
  where str = show num

convertToBase2 num = convertToBase2' num []

convertToBase2' :: Int -> String -> Int
convertToBase2' 0 str = read str
convertToBase2' num str = convertToBase2' quot (str ++ show reminder)
  where reminder = num `rem` 2
        quot = num `div` 2
 
listPalin = filter isPalindrome [1..10^6]
listDoublePalin = filter (isPalindrome . convertToBase2) listPalin
