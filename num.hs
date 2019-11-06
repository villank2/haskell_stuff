num :: Eq a => a -> [a] -> Int
num x [] = 0
num x (h:t) | x == h = 1 + num x t
            | otherwise = num x t