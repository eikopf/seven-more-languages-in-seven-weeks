USING: kernel tools.test day3.tuples;
IN: day3.tuples.tests

! construct new object
cart-item new

! push price into new object
cart-item new 4.95 >>price

! modify value in object
cart-item new 25.00 >>price
[ 0.5 * ] change-price

! new item with explicit elements
! boa stands for "By Order of Arguments"
"book" 25.00 1 cart-item boa

! construct item with predefined constructor
"brush" <dollar-cart-item>
