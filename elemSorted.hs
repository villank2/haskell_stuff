elemSorted :: Ord a => a -> [a] -> Bool
elemSorted n [] = False
elemSorted n (h:t) | h > n = False
                   | h /= n = elemSorted n t
                   | otherwise = True