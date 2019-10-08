import Data.Char(toUpper)
import Data.Char(isUpper)

stringToUpper :: String -> String
stringToUpper [] = []
stringToUpper (x:xs) = toUpper x : stringToUpper xs