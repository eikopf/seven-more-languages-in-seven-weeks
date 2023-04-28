USING: kernel sequences ;
IN: day2.greeter

: greeting ( name -- greeting ) "hello, " swap append ;
