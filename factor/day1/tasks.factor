! easy tasks
! compute 3^2 + 4^2
3 3 * 4 4 * + .

! do it with math.functions
USE: math.functions
3 sq 4 sq + sqrt .

! get from 1 2 on the stack to 1 1 2
1 2
[ dup ] dip . . .
clear

! do word concatenation
"Oliver"
[ "Hello, " ] dip append >upper .

! medium tasks
! use reduce to compute sum of list
{ 1 4 17 9 11 } 0 [ + ] reduce .

! use reduce to sum (1, 100)
USE: math.ranges
100 [1, b] 0 [ + ] reduce .

! use map to square numbers from 1 to 10
10 [1,b] [ sq ] map .

! hard tasks
! split two digit number
42 [ 10 /i ] [ 10 mod ] bi . .

! split any digit number
323243242342 number>string string>digits [ . ] each
