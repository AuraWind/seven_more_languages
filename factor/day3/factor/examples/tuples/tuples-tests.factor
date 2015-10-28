cart-item new

cart-item new 4.95 >>price
cart-item new 4.95 >>price price>>

cart-item new 25.00 >>price
dup price>> 0.5 * >>price

cart-item new 25.00 >>price
[ 0.5 * ] change-price

"Seven Languages Book" 25.00 1 cart-item boa

: <dollar-cart-item> ( name -- cart-item ) 1.00 1 cart-item boa ;
"Paint brush" <dollar-cart-item>

: <one-cart-item> ( -- cart-item ) T{ cart-item { quantity 1 } } ;

T{ cart-item f "orange" 0.59 }
