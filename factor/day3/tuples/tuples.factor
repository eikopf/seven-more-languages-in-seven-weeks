USE: kernel
IN: day3.tuples

! defining a new class
TUPLE: cart-item name price quantity ;

! defining a constructor with prespecified values
: <dollar-cart-item> ( name -- cart-item ) 1.00 1 cart-item boa ;

! constructing object with T{} notation
: <one-cart-item> ( -- cart-item ) T{ cart-item { quantity 1 } } ;
