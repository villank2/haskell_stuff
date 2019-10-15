evalPoly :: Int -> [Int] -> Int
evalPoly n [] = 0
evalPoly n li | length li == 1 = head li
evalPoly n li = last li * (n ^ power) + evalPoly n li1
   where li1 = init li
         power = length li -1