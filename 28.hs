import Data.List

gen current seed size = (newCurrent, newSeed )
 where mult = size-1
              newSeed = seed + mult * 4
                     newCurrent = current + seed * 4 + 10 * mult
                      
getToSize size = foldl (\(current,seed) size -> gen current seed size) (1,1) [3,5..size]

go = getToSize 1001


