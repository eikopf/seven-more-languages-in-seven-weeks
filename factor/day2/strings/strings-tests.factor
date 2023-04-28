USING: day2.strings kernel io tools.test ;
IN: day2.strings.tests

{ t } [ "racecar" palindrome? ] unit-test
{ f } [ "hello" palindrome? ] unit-test
