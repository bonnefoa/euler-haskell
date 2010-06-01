import Test.QuickCheck
import Euler15

prop_nextSupToPrev aRow@(Row xs) = sum nextXs >= sum xs
  where (Row nextXs) =getNextRow aRow
prop_nextHasSamelength row@(Row xs) = length xs == length nextXs
  where (Row nextXs) =getNextRow row
prop_nextEndWith1 row = last nextXs == 1 
  where (Row nextXs) =getNextRow row


prop_gridBeginWith1 width = width < 100 ==> all (==1) firstLine
  where (Grid  rows) = buildGrid width (Grid [])
        (Row firstLine) = head rows

prop_gridBeginFollowWithSupRow (Grid (row:_)) = sum newR > sum cur
  where (Row newR) = getNextRow row 
        (Row cur) = row

instance Arbitrary Row where
  arbitrary = do xs <- listOf1 $ elements [1..100]
                 return (Row (xs++[1]))

instance Arbitrary Grid where
  arbitrary = do rows  <- listOf1 $ arbitrary
                 return (Grid rows)

