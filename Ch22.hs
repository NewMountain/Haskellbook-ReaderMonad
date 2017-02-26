import Data.Char

cap :: String -> String
cap xs = map toUpper xs 

rev :: String -> String
rev xs = reverse xs

composed :: String -> String
composed = cap . rev

fmapped :: String -> String
fmapped = cap <$> rev

tupled :: String -> (String, String)
tupled = (,) <$> cap <*> rev

tupled' :: String -> (String, String)
tupled' = (,) <$> rev <*> cap

tupledM :: String -> (String, String)
tupledM = do
    a <- rev
    b <- cap
    return (a, b)