module MathTest
       where

import Test.HUnit
import Test.QuickCheck
import MyMath

testEven = TestCase $ assertEqual
  "Should get even"
  True
  ( isEven 2 ) 

prop_RevRev xs = reverse (reverse xs) == xs
  where types = xs::[Int]

