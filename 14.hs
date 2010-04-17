module Main
       where

import Random
import IO

fifi :: Int -> Int
fifi n | even n = 
  let doubleTran = fromIntegral(n)
  in floor(doubleTran/2)
fifi n = 3*n+1

produceChain :: Int->[Int]
produceChain 1 = []
produceChain n = 
  let current = fifi(n) 
  in  current : produceChain(current)

produceChainState list 1 = []
produceChainState list xs
  |any (== xs) list = []
produceChainState list x = 
  let current = fifi(x) 
  in current : produceChainState list current

data MyTree a 
              = Leaf a
                | Branch (MyTree a) a (MyTree a)
                  
treeSize (Leaf x)=1
treeSize (Branch left x right) = treeSize left + treeSize right
contains x (Leaf leaf) = x==leaf
contains x (Branch left node right) = 
  let resLeft = contains x left
  in resLeft

-- process :: (Integral a) => a -> a -> a
process num last
   | last >20 = num
   | isDiv && div > 5000 = last
   | isDiv = process div (last+1)
   | otherwise = process (num*2) last
     where div = floor(toDiv/3)
           isDiv = (num -1) `rem` 3 == 0 
           toDiv = fromIntegral (num-1)                        

                      