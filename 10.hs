module Euler
       where
import Data.List
import qualified Data.ByteString.Lazy.Char8 as L
import Data.Word

readDaFile fileName max= do
  inpStr <- L.readFile fileName
  let listNumbers = processFile inpStr
  let res = takeWhile (< max) listNumbers
  putStrLn $ show $ bigSum res 0
  
bigSum :: [Int] -> Word64 -> Word64
bigSum [] cur = cur
bigSum (x:xs) cur = bigSum xs (cur + (fromIntegral x))
 
processFile :: L.ByteString -> [Int]
processFile = map read . filter (/= "") . filter (/= "\r\r") . concat . map (map L.unpack) . map (L.split ' ') . L.lines

