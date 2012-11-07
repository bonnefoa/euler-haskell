import Data.List
import Data.Maybe
import Data.Tuple

main = print $ length $ processCurrency 100 []

currencies :: [Integer]
currencies = [200, 100, 50, 20, 10, 5, 2, 1]

addCurrent :: Integer -> [Integer] -> Integer -> (Integer, [Integer])
addCurrent currentCurrency oldCurrencies value =
  (currentCurrency - value, value : oldCurrencies)

processCurrency :: Integer -> [Integer] -> [(Integer, [Integer])]
processCurrency current oldCurrencies = currentFinished ++ recurFinished
  where thresholdCurrency = maybe current (min current) (listToMaybe oldCurrencies)
        candidateCurrencies = filter (<= thresholdCurrency) currencies
        nextBatch = map (addCurrent current oldCurrencies) candidateCurrencies
        (currentFinished, yetToFinish) = partition ((==0) . fst) nextBatch
        recurFinished = concatMap (uncurry processCurrency) yetToFinish
