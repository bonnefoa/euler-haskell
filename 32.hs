module Euler
  where
    
import Data.List 

disassemble :: Int -> [Int]    
disassemble num = map read listChar
  where str = (show num)
        listChar = separate str
        
separate = groupBy (\a b->False)        
  
filterPandigit :: [Int] -> [Int]           
filterPandigit = filter isPandigit

isUnique :: [Char] -> Bool        
isUnique (x:xs) = if (x `elem` xs) then False
                  else isUnique xs
isUnique [] = True                       

isPandigit :: Int -> Bool
isPandigit = isUnique . show 

containsZero :: Int -> Bool
containsZero num = 0 `elem` (disassemble num)

tupleContainsZero :: (Int,Int,Int) ->Bool
tupleContainsZero (a,b,c) = first || second || third
  where first = containsZero a
        second = containsZero b
        third = containsZero c

crossIsPandigit :: (Int,Int,Int) -> Bool
crossIsPandigit = isPandigit . concatTuple 

tenPandigit = filterPandigit [1 .. 5000]
hundredPandigit = filterPandigit [1 .. 5000]

generateProduce :: [Int] -> [Int] -> [(Int,Int,Int)]
generateProduce lop rop = filterZero (filteredPandigitOnAllTuple (filteredPandigitOnMult (filterNine list)))
  where filterNine = filter tupleIsNine
        filteredPandigitOnAllTuple = filter crossIsPandigit 
        filteredPandigitOnMult = filter (isPandigit . thrd)
        filterZero = filter (not . tupleContainsZero)
        list = concat ( map (\a -> subList2 (*) a lop) rop)
                           
subList1 :: a -> [a] -> [(a,a)]
subList1 elem = map (\a -> (elem, a))

subList2 :: (a->a ->a) -> a -> [a] -> [(a,a,a)]
subList2 p elem = map (\a -> (elem, a, p elem a ))
        
calcul = generateProduce tenPandigit hundredPandigit        

thrd (_,_,a) = a
concatTuple (a,b,c) = read( (show a) ++ (show b) ++ (show c))

tupleIsNine (a,b,c) = length concat == 9
  where concat = (show a)++(show b)++(show c)

multiplicandList :: [(Int,Int,Int)] -> [Int]
multiplicandList =nub . ( map thrd)