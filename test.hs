module Main
       where

x=5
y = (6,"Hello")
z = x * fst y

main = putStrLn "Hello World"
          
square x =x *x

f x = 
  case x of
    0 ->1
    1 -> 5
    2 -> 2
    _ -> -1
