shortest :: [[a]] -> [a]
shortest [] = error "empty list"
shortest (h:t) = short_helper h t where
   short_helper x [] = x
   short_helper x (xs:xy) | xs < x = short_helper xs xy
                          | otherwise = short_helper x xy