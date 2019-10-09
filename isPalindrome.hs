isPalindrome :: Eq a => [a] -> Bool
isPalindrome a | length a <= 1 = True
               | head a == last a = isPalindrome . tail . init $ a
               | otherwise = False