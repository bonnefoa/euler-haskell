import Data.List
import qualified Data.ByteString.Lazy.Char8 as L

readDaFile fileName= do
    inpStr <- L.readFile fileName
    let listNames = processFile inpStr
    let couplesStrScore = (processScoreOfList listNames)
    return (foldl (\seed tuple-> (snd tuple)+seed  ) 0  couplesStrScore)
                   
processFile :: L.ByteString -> [String]
processFile = sort . map L.unpack . L.split ',' . L.filter (/= '"')

go = readDaFile "names.txt"

getCharScore :: Char -> Int
getCharScore c =  (getVal $ c `elemIndex` list ) + 1
   where list = ['A'..'Z']

getVal (Just a) = a
 
getStringScore :: String -> Int
getStringScore = sum . map getCharScore
 
processScoreOfList :: [String] -> [(String,Int)]
processScoreOfList listName = map (\(str,mul) -> (str,mul * getStringScore str) ) zipped
  where zipped = zip listName [1..length listName]
          
