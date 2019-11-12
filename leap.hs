data Day =
   Sun | Mon | Tue | Wed | Thu | Fri | Sat
   deriving (Show,Enum)
data Month = 
   Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec 
   deriving (Enum,Read)
data Date = 
   Tuple (Int,Month,Int)

leap :: Int -> Bool
leap year | year `mod` 400 == 0 && year `mod` 100 == 0 = True
          | year `mod` 4 == 0 && year `mod` 100 == 0 = False
          | year `mod` 4 == 0 = True
          | otherwise = False