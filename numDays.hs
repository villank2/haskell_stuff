data Day =
   Sun | Mon | Tue | Wed | Thu | Fri | Sat
   deriving (Show,Enum)
data Month = 
   Jan | Feb | Mar | Apr | May | Jun | Jul | Aug | Sep | Oct | Nov | Dec | Null
   deriving (Enum,Read)
data Date = 
   Tuple (Int,Month,Int)

leap :: Int -> Bool
leap year | year `mod` 400 == 0 && year `mod` 100 == 0 = True
          | year `mod` 4 == 0 && year `mod` 100 == 0 = False
          | year `mod` 4 == 0 = True
          | otherwise = False

lyear :: [Int]
lyear = [31,29,31,30,31,30,31,31,30,31,30,31] 
nlyear :: [Int]
nlyear = [31,28,31,30,31,30,31,31,30,31,30,31]

mLengths :: Int -> [Int]
mLengths year | leap year == True = lyear
              | otherwise = nlyear

mySum :: [Int] -> Int
mySum [] = 0
mySum [h] = h
mySum (h:h1:t) = h + h1 + mySum t



numDays :: (Int,Month,Int) -> Int

numDays (0,_,1752) = 0
numDays (days,m,year) = days + mySum days_init + numDays (0,Null,new_year)
   where index = (fromEnum m)
         list_days = mLengths year
         days_init = take index list_days
         new_year = year - 1