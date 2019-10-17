repAll :: Eq a => a -> a -> [a] -> [a]
repAll item repl [] = []
repAll item repl (h:t) | h == item = [repl] ++ repAll item repl t
                         | otherwise = [h] ++ repAll item repl t