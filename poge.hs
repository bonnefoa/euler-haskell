module Poge
       where

import Text.Regex.Posix

isLineContainingPackage :: String -> Bool
isLineContainingPackage chaine = chaine  =~ "package" 

parsePackage :: String -> String
parsePackage chaine = chaine  =~ "([^ ]+\\.)+[^ ;]+" 

readPackageFromFile :: String -> String
readPackageFromFile = 

