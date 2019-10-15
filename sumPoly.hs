sumPoly :: [Int] -> [Int] -> [Int]
sumPoly [] [] = []
sumPoly (h:_) [] = [h]
sumPoly [] (h:_) = [h]
sumPoly (h:t) (h1:t1) = [h + h1] ++ sumPoly t t1 