triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c | (a + b) < c || (a+c)<b || (c+b)<a = error "Not a triangle!"
                   | otherwise = sqrt(s*(s-a)*(s-b)*(s-c))
                   where s = (a+b+c)/2
