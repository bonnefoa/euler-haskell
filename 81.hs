import Data.List
import qualified Data.ByteString.Lazy.Char8 as L

readDaFile fileName = do
  inpStr <- L.readFile fileName
  let listRows = processFile inpStr
  return (head $ mergeMatrix listRows)
  
processFile :: L.ByteString -> [[Int]]
processFile = map (map read) . map (map L.unpack) . map (L.split ',') . L.lines
  
mergeMatrix :: [[Int]] -> [Int]
mergeMatrix mat = foldr1 mergeRows (preprocessMatrice mat)

preprocessMatrice :: [[Int]] -> [[Int]]
preprocessMatrice mat =  (init mat) ++ [lastRow]
  where lastRow = scanr1 (+) (last mat)

mergeRows :: [Int] -> [Int] -> [Int]
mergeRows firstRow secondRow = reverse . tail $ merged
  where merged = scanl chooseMinForSumTuple 0 zipped
        zipped = reverse $ zip firstRow secondRow       

chooseMinForSumTuple 0 (a,b)  = a + b
chooseMinForSumTuple c (a,b)  = a + (min b c)
 
smallGo = readDaFile "smallMatrice.txt"

go = readDaFile "matrix.txt"

