module Euler79
  where

import qualified Data.ByteString.Lazy.Char8 as L
import Data.List

readDaFile  fileName = do
  inpStr <- L.readFile fileName
  let listTriples = processFile inpStr
  return listTriples

processFile :: L.ByteString -> [String]
processFile = map L.unpack . L.lines

separatePairOfNum :: String -> [(Char,Char)]
separatePairOfNum explodedNum = zip fstLst sndLst
  where fstLst = init explodedNum
        sndLst = tail explodedNum

hasTwoSimilarElem str1 str2 = any (`elem` arrTwo) arrOne
  where arrOne = separatePairOfNum str1
        arrTwo = separatePairOfNum str2

splitByElem :: String -> String -> (String,String,String)
splitByElem strToSplit elem = (fstPart,sndPart, thrPart) 
 where (fstPart,rest) = break (== head elem) strToSplit
       (sndPart,thrPart) = splitAt 2 rest 
