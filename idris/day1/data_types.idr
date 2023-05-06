-- simple union type
data DumbNumber = Naught | One | Two | Three

-- a natural number is 0, or a successor of a natural number
-- idris normally sets these as Z and S (successor)
data Natural = Zero | After Natural

-- parameterised types take a type as a parameter
-- here a is the type parameter, and :: is the list concat operator
-- so a MyList can be Blank, or a concatenation of elements of type a
data MyList a = Blank | (::) a (MyList a)

-- these parameterised types are used to define the Maybe in idris
-- def: data Maybe a = Nothing | Just a
