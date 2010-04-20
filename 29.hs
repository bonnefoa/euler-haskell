module Euler
       where
      
import Data.Eq      
import Data.List      
import Data.Int
      
listGen list = concat ( map (\a -> subLister a) list)
  where subLister x = map (\y -> tupler x y) list
        tupler x y = (x,y)

calcul result list@(x:xs) 
  | (a*a) <= fst (last xs) = calcul (result ++ [x]) newList 
  | otherwise = result ++ list
      where a = fst x
            toDelete = generateEquals x
            newList =  filter (\s -> s `notElem` toDelete) xs
calcul result [] = result

generateEquals tuple 
  | even seed = zip list power
  | otherwise = []
    where a = fst tuple
          seed = snd tuple
          nextSeed = seed - 2 
          stop = 2
          power = [seed, nextSeed .. stop]
          list = iterate (*a) a

brute ::(Integral a)=> [(a,a)] -> [a] 
brute list = map (\s -> (fst s)^(snd s)) list

aList max = calcul [] (listGen [2..max])
bruteur1 max = brute (aList max)
bruteur2 max = length( nub (brute (listGen[2.. max])))