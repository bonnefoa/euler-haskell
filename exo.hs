module Main
       where 

fib 1 = 1
fib 2 = 1
fib n = fib(n-1) + fib(n-2)

mult 1 b = b
mult a 1 = a
mult a b = a + b - 1 + mult(a-1)(b-1)

my_map p [] = []
my_map p (x:xs) = p(x) : my_map p xs

data Quadruple a b = Quadruple a a b b
firstTwo :: Quadruple a b -> [a]
firstTwo (Quadruple x y z t) = [x,y]

lastTwo :: Quadruple a b -> [b]
lastTwo (Quadruple x y z t) = [z,t]


data Tuple a = Tuple1 a
             | Tuple2 a a
             | Tuple3 a a a
             | Tuple4 a a a a
tuple1 (Tuple1 a) = Just a
tuple1 (Tuple2 a b) = Just a
tuple1 (Tuple3 a b c) = Just a
tuple1 (Tuple4 a b c d) = Just a

tuple2 (Tuple1 a) = Nothing
tuple2 (Tuple2 a b) = Just b
tuple2 (Tuple3 a b c) = Just b
tuple2 (Tuple4 a b c d) = Just b

tuple3 (Tuple1 a) = Nothing
tuple3 (Tuple2 a b) = Nothing
tuple3 (Tuple3 a b c) = Just c
tuple3 (Tuple4 a b c d) = Just c

tuple4 (Tuple1 a) = Nothing
tuple4 (Tuple2 a b) = Nothing
tuple4 (Tuple3 a b c) = Nothing
tuple4 (Tuple4 a b c d) = Just d

ftuple (Tuple1 a) = (Left (Left a))
ftuple (Tuple2 a b) = (Left (Right(a,b)))
ftuple (Tuple3 a b c) = (Right (Left(a,b,c)))
ftuple (Tuple4 a b c d) = (Right(Right(a,b,c,d)))
    
data List a = Nil                          
            | Cons a (List a)


listHead (Cons x xs) = x

listTail (Cons x Nil) = x
listTail (Cons x xs) = listTail xs

listFoldl p s (Cons x Nil) = p s x
listFoldl p s (Cons x xs) = listFoldl p (p x s) xs

ga = Cons 3 Nil
gr = Cons 9 (Cons 4 ga)

data BinaryTree a
                 = Leaf a
                 | Branch (BinaryTree a) a (BinaryTree a)

element (Leaf l)  = [l]
element (Branch le no ri) 
  = element le ++ [no] ++ element ri

tree = Branch (Leaf 1) 2 (Leaf 3)


foldTree :: (a -> b -> b) -> b -> BinaryTree a -> b
foldTree p s (Leaf x)  = p x s
foldTree p s (Branch lhs x rhs) 
  = foldTree p (p x (foldTree p s rhs)) lhs

elements2 = foldTree (:) [] 