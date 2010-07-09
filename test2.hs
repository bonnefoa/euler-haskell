doLog :: (Floating a) => (Integer,Integer) -> a
doLog (a,b) = (fromInteger b::Double) * (log a)