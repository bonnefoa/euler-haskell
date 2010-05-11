module Euler
       where
import Data.List
import qualified Data.ByteString.Lazy.Char8 as L

readDaFile fileName= do
  inpStr <- L.readFile fileName
  let listNumbers = processFile inpStr
  putStrLn $ show listNumbers
  return (processDaBordel (reverse listNumbers))
 
processFile :: L.ByteString -> [[Int]]
processFile = map (map read) . map (map L.unpack) . map (L.split ' ') . L.lines

processDaBordel :: [[Int]] -> [Int]
processDaBordel (x:y:xs)  = processDaBordel newNums
  where newNums = newblast : xs
        path = getPath x
        newblast = zipWith (+) y path
processDaBordel (x:[]) = x

getPath :: [Int] -> [Int]
getPath bottom
  | length bottom == 1 = bottom
  | otherwise = map getPairMax [0 .. (length bottom -2)]
    where
        getPairMax i = max ((!!) bottom i) ((!!) bottom (i+1))
testMerge = getPath [4,5,6]

go = readDaFile "triangle.txt" 

