module Triple
       where

data Triple a b c = Triple a b c 

tripleFst (Triple x y z) =  x
tripleSnd (Triple x y z) =  y
tripleThr (Triple x y z) =  z
