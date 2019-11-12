

lyear :: [Int]
lyear = [31,29,31,30,31,30,31,31,30,31,30,31] 
nlyear :: [Int]
nlyear = [31,28,31,30,31,30,31,31,30,31,30,31]

leap :: Int -> Bool
leap year | year `mod` 400 == 0 && year `mod` 100 == 0 = True
          | year `mod` 4 == 0 && year `mod` 100 == 0 = False
          | year `mod` 4 == 0 = True
          | otherwise = False

mLengths :: Int -> [Int]
mLengths year | leap year == True = lyear
              | otherwise = nlyear