import qualified Data.ByteString.Lazy.Char8 as L
import Data.List
import Data.Ord
-- File management

readDaFile = do
  inpStr <- L.readFile "base_exp.txt"
  let listNums = map processStrings $ processFile inpStr       
  let nList = map expTuple listNums      
  let indice = head $ (getMaxTuple nList) `elemIndices` listNums 
  return (indice +1)
 
processFile :: L.ByteString -> [String]
processFile  = map L.unpack . L.lines

processStrings :: String -> (Integer,Integer)
processStrings str = tupleRead (splitAtChar ',' str)

splitAtChar :: Char -> String -> (String, String)
splitAtChar c str = removeSplitChar tuple
       where cPos = head $ elemIndices c str
             tuple = splitAt cPos str
             removeSplitChar (a,b)= (a,tail b)
      
tupleRead :: (String, String) -> (Integer, Integer)
tupleRead (a,b)= (read a , read b)

expTuple :: (Integer,Integer) -> (Integer,Integer,Double)
expTuple (a,b) = (a,b,expTuple' (fromInteger a,fromInteger b))
  
expTuple' :: (Floating a) => (a,a) -> a
expTuple' (a,b) = b * log a

getMaxTuple ::  [(Integer,Integer,Double)] -> (Integer, Integer)
getMaxTuple list = (a,b)
  where (a,b,_) = maximumBy (comparing thrd) list

thrd (_,_,c) = c


-- getMaxExpTuples :: [(Integer,Integer)] -> (Integer,Integer)
-- getMaxExpTuples readList = readList !! (head maxPos)
--   where listExpNums = map expTuple readList
--         maxNum = maximum listExpNums
--         maxPos = elemIndices maxNum listExpNums

