module Input
       where

import IO

messageAno = "You are an anonymous coward"
messageHas = "Haskell Poutre!!"    
messageDeb = "Debug!"

intro = do
  putStrLn "Enter your name"
  input <- getLine
  return input

doEnterIf = do
  input <- intro
  -- print input
  if input == "Simon" || input == "John"
    then do print messageHas 
    else if input == "Koen" 
            then do print messageDeb
    else     
    do print messageAno

doEnterCase = do   
  input <- intro
  case input of
    "Simon" ->  print messageHas
    "John" -> putStrLn messageHas
    _ -> do print messageAno
    