repFirst :: Eq a => a -> a -> [a] -> [a]
repFirst item repl [] = []
repFirst item repl (h:t) | h == item = [repl] ++ t
                         | otherwise = [h] ++ repFirst item repl t