-- checks if year is a leap year
isLeap : Integer -> Bool
isLeap year = (mod year 400 == 0) ||
  ((mod year 4 ==0) && not (mod year 100 == 0))

-- returns the number of days in a month
numberOfDays : Integer -> Integer -> Integer
numberOfDays year 2 = if isLeap year then 29 else 28
numberOfDays _ 9 = 30
numberOfDays _ 4 = 30
numberOfDays _ 6 = 30
numberOfDays _ 11 = 30
numberOfDays _ _ = 31

-- determines whether a date is valid
validDate : Integer -> Integer -> Integer -> Bool
validDate year month day = (day >= 1) &&
  (day <= numberOfDays year month) &&
  (month >= 1) &&
  (month <= 12)

-- redefining so clause from prelude (old versions of idris?)
data so : Bool -> Type where
  oh : so True

data Date : Integer -> Integer -> Integer -> Type where
  makeDate : (y:Integer) -> (m:Integer) -> (d:Integer) -> so(validDate y m d) -> Date y m d

-- what the book calls "Prelude.Either.choose," modern idris seems to call 'Prelude.Either.choice'
-- something about the repl also seems to dislike unqualified references to the standard lib? idk

dateFromUnsafeInput : (y:Integer) -> (m:Integer) -> (d:Integer) -> Maybe (Date y m d)
dateFromUnsafeInput y m d = case choice (validDate y m d) of
  Left valid => Just (makeDate y m d valid)
  Right _ => Nothing
