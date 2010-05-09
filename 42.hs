module Euler
       where 

import qualified Data.ByteString.Lazy.Char8 as L 
import Data.List

-- File management 

readDaFile = do
  inpStr <- L.readFile "words.txt" 
  let listWords = processFile inpStr      
  return (filter isWordTriangle listWords)
  
processFile :: L.ByteString -> [String]
processFile  = map L.unpack . L.split ',' . L.filter (/= '"')

-- Triangle management 

triangle n = (n * (n + 1)) `div` 2

isWordTriangle :: String -> Bool
isWordTriangle = (`elem` listTriangle). wordToTriangle

listTriangle :: [Int]
listTriangle = map triangle [1..2000]

wordToTriangle :: String -> Int
wordToTriangle str =foldl (+) 0  listNum
  where listNum = map letterToNum str

letterToNum :: Char -> Int
letterToNum l =  getOrElse wrp 0 
  where wrp = elemIndex l listLetter

getOrElse :: Maybe Int -> Int -> Int
getOrElse (Just x) _ = x +1 
getOrElse Nothing x = x

listLetter = ['A'..'Z']

