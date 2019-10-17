numSorted :: Ord a => a -> [a] -> Int 
numSorted n [] = 0
numSorted n (h:t) | h == n && h < head t = 1 + numSorted n t
                  | otherwise = numSorted n t