shortest :: [[a]] -> [a]
shortest [] = []
shortest [x] = x
shortest (x:xs)
   | length x > length other_head = shortest xs
   | otherwise = shortest (x : other_tail)
   where other_head = head xs
         other_tail = tail xs