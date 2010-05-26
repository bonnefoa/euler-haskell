import Data.List
import qualified Data.ByteString.Lazy.Char8 as L

readDaFile fileName = do
  inpStr <- L.readFile fileName
  let listRows = processFile inpStr
  return (listRows)
  
processFile :: L.ByteString -> [[Int]]
processFile = map (map read) . map (map L.unpack) . map (L.split ',') . L.lines

searchPaths :: [[Int]] -> [(Int,Int)]
searchPaths mat = searchPaths' startsPath (tail mat)
  where startsPath = zip [0.. length mat] curCol
        curCol = head mat
        
searchPaths' :: [(Int,Int)] -> [[Int]] -> [(Int,Int)]        
searchPaths' curCost [] = curCost
searchPaths' curCost mat = searchPaths' nextCost (tail mat)
--  | length (head mat) > 1 = searchPaths' nextCost (tail mat)
--  | otherwise = nextCost                          
    where nextCost = map (\pos -> searchOptimizedPath pos curCol nextCol) listPos
          nextCol = head mat
          curCol = map snd curCost
          listPos = map fst curCost

pivoteMatrix :: [[Int]] -> [[Int]]
pivoteMatrix mat | length (head mat) == 1 = [map head mat]
                 | otherwise= (map head mat) : pivoteMatrix (map tail mat)

searchOptimizedPath :: Int -> [Int] -> [Int] -> (Int, Int)
searchOptimizedPath  pos nextCol curCol = (nextPos,nextCost)
  where costColCur = getPathCostForCol pos curCol
        costColNext = zipWith (+) costColCur nextCol
        nextCost = minimum costColNext
        Just nextPos = nextCost `elemIndex` costColNext
              
getPathCostForCol :: Int -> [Int] -> [Int]              
getPathCostForCol pos col
  | pos == 0 = scanl1 (+) col
  | pos + 1 == length col = scanr1 (+) col
  | otherwise = g1 ++ g2
    where (l1, l2) = splitAt (pos+1) col
          g1 = scanr1 (+) l1
          g2 = tail $ scanl1 (+) (last l1:l2)

smallGo = readDaFile "smallMatrice.txt"

go = readDaFile "matrix.txt"
