module Euler
       where
import System.Random

fermatTest x random = reminderPower == reminderNormal
  where reminderPower = (random ^ x) `rem` x
        reminderNormal = random `rem` x
        
ioFermat list = do
  rndList <- mapM genRandom list
  let lstWithRnd = zip list rndList
  let res = filter (\a -> fermatTest (fst a) (snd a)) lstWithRnd
  return (fst $ unzip res)

go list = do 
     res <- ioFermat list
     res2 <- ioFermat res
     return (sum res2)
  
genRandom max = getStdRandom (randomR(1, max-1))

