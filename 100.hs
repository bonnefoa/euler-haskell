
proba blue tot  = num / den
 where num = blue * (blue-1) 
       den = tot * (tot-1)

-- B*(B-1) = tot(tot-1) /2        
-- B^2 ~= tot^2/2
       
blueEst :: Int -> Int  
blueEst tot = ceiling square
  where square = sqrt $ fromIntegral $ (tot ^ 2 ) / 2 
        
isOk tot = blue*(blue-1) == tot*(tot-1) `div` 2 
  where blue = blueEst tot