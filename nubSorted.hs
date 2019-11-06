nubSorted :: Eq a => [a] -> [a]
nubSorted [] = []
nubSorted (h:[]) = [h] 
nubSorted (h:h2:t) | h == h2 = nubSorted (h2:t)
                   | otherwise = [h] ++ nubSorted (h2:t)