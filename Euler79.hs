module Euler79
  where

import qualified Data.ByteString.Lazy.Char8 as L
import Data.List

readDaFile  fileName = do
  inpStr <- L.readFile fileName
  let listTriples = processFile inpStr
  let listTuples = concat $ map (createTuple . separateNum) listTriples
  let listUnique = getListUnique listTriples
  return $ qsort listTuples listUnique

processFile :: L.ByteString -> [Int]
processFile = map read . map L.unpack . L.lines

separateNum :: Int -> [Int]
separateNum num = numTab num
  where numTab = map read . groupBy (\_ _ -> False) . show 

getListUnique :: [Int]  -> [Int]
getListUnique lst = nub . concat $ map separateNum lst

createTuple :: [Int] -> [(Int,Int)]
createTuple (x:[]) = []
createTuple (x:xs) = zip (replicate (length xs) x) xs ++ createTuple xs

qsort :: [(Int,Int)] -> [Int] -> [Int]
qsort lstTuple [] = []
qsort lstTuple (x:xs) = qsort lstTuple lhs ++ [x] ++ qsort lstTuple rhs
  where lhs = filter (isSuperior x) xs
        rhs = filter (isInferior x) xs
        isInferior x y = any (\(a,b) -> a == x && y == b) lstTuple
        isSuperior x y = not $ isInferior x y

