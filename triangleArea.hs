triangleArea :: Float -> Float -> Float -> Float
triangleArea x y z = sqrt(s*(s-x)*(s-y)*(s-z))
    where s = (x + y + z)/2


