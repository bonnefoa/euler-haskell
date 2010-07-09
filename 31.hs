module Euler
  where
    
list = [1,2,5,10,20,50,100,200]    

listCurrency :: [Int] -> [Cur]
listCurrency = map (\a -> Currency a 0) 

calcul = processSingle 200 (listCurrency list)

processMultiple Int -> [[Cur]] -> [[Cur]]
processMultiple aim currentList= 
  

processSingle :: Int -> [Cur] -> [Cur]
processSingle aim (x:xs) 
  | curValue x > aim = processSingle aim xs
  | curValue x == 1 = curIter x aim : []
  | otherwise = nextCurValue
    where newAim = aim - curValue x
          newCur = curIter x 1
          nextCurValue = newCur : processSingle newAim xs

data Currency value number = Currency value number
                    deriving(Show)
type Cur = Currency Int Int                            

curIter (Currency valu num) ite = Currency valu (num+ite) 
curValue :: Cur -> Int
curValue (Currency valu _) = valu