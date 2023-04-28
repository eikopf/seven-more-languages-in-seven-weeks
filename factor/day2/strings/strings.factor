USING: kernel sequences ;
IN: day2.strings

: palindrome? ( str -- bool ) dup reverse = ;
