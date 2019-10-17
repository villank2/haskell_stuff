nubSorted :: Eq a => [a] -> [a]
nubSorted n [] = []
nubSorted n (h:t) | h /= head tail = [h] ++ nubSorted n t
                  | otherwise = [] ++ nubSorted n t