USING: kernel math sequences ;
USE: day3.tuples
IN: day3.checkout

TUPLE: checkout item-count base-price taxes shipping total-price ;

: sum ( seq -- n ) 0 [ + ] reduce ;
: cart-item-count ( cart -- count ) [ day3.tuples.quantity>> ] map sum ;
: cart-item-price ( cart-item -- price ) [ price>> ] [ quantity>> ] bi * ;
: cart-base-price ( cart -- price ) [ cart-item-price ] map sum ;

: <base-checkout> ( item-count base-price -- checkout ) f f f checkout boa ;
: <checkout> ( cart -- checkout ) [ cart-item-count ] [ cart-base-price ] bi <base-checkout> ;

CONSTANT: gst-rate 0.05
CONSTANT: pst-rate 0.09975

: gst-pst ( price -- taxes ) [ gst-rate * ] [ pst-rate * ] bi + ;

: taxes ( checkout taxes-calc -- taxes ) [ dup base-price>> ] dip call >>taxes ; inline

CONSTANT: base-shipping 1.49
CONSTANT: per-item-shipping 1.00

: per-item ( checkout -- shipping ) per-item-shipping * base-shipping + ;
: shipping ( checkout shipping-calc -- shipping ) [ dup item-count>> ] dip call >>shipping ; inline
: total ( checkout -- total-price ) dup [ base-price>> ] [ taxes>> ] [ shipping>> ] tri + + >>total-price ;
: sample-checkout ( checkout -- checkout ) [ gst-pst ] taxes [ per-item ] shipping total ;

