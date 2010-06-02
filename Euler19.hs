module Euler19
  where
import Data.List
import System.Time
import Data.Time.Calendar

getDayForMonthAndYear :: Month -> Integer -> Int
getDayForMonthAndYear month year =
    case month of
      January -> 31
      February -> case (isLeapYear year) of
                  True -> 29
                  False -> 28
      March -> 31
      April -> 30
      May -> 31
      June -> 30
      July -> 31
      August -> 31
      September -> 30
      October -> 31
      November -> 30
      December -> 31

listMonth = [ January , February , March , April , May , June , July , August , September , October , November , December ]

getNumOfFirstSunday year offset = (numSunday, nextOffset)
  where dayList =  map (flip getDayForMonthAndYear $ year) listMonth
        listOffset = scanl (\off el -> (off + el) `mod` 7) offset dayList 
        nextOffset = last listOffset
        numSunday = length $ filter (== 6) (init listOffset)

(_,firstOffset) = getNumOfFirstSunday 1900 0         

res = foldl step (0,firstOffset) [1901..2000] 
  where step (numSunday,offset) year = let (calNum, nextOff) = getNumOfFirstSunday year offset 
                                       in (numSunday+calNum,nextOff)

