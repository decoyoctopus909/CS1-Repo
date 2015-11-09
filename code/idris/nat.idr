module nat

import bool
import eq
import Serialize

data nat = O | S nat

||| returns true if the argument is (represents) zero, otherwise false
isZero: nat -> bool
isZero O = true
isZero _ = false

||| returns the successor of any given nat
succ: nat -> nat
succ n = S n

||| returns the predecessor of any given nat
pred: nat -> nat
pred O = O
pred (S n) = n

||| return true if the argument is even otherwise false
evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

add: nat -> nat -> nat
add O m = m
add (S n) m = S (add n m)

mult: nat -> nat -> nat
mult O m = O
mult (S n) m= add (mult m n) m

fact: nat -> nat
fact O = O
fact (S O) = (S O)
fact (S n) = mult (S n) (fact n)

sub: nat -> nat -> nat
sub O m = O
sub n O = n
sub (S n) (S m) = sub n m

||| return true if n<=m, otherwise false
le: nat -> nat -> bool
le O m = true
le (S n) O = false
le (S n) (S m) = le n m

||| exponent
ex: nat -> nat -> nat
ex O _ = O
ex x O = (S O)
ex x (S n) = mult x (ex x n) 

||| return true if n=m, otherwise false
eql_nat: nat -> nat -> bool
eql_nat O O = true
eql_nat (S n) O = false
eql_nat O (S m) = false
eql_nat (S n) (S m) = eql_nat n m

||| return true if n>m, otherwise false
gt: nat -> nat -> bool
gt (S n) O = true
gt O (S m) = false
gt (S n) (S m) = not (le (S n) (S m))

||| return true if n>=m, otherwise false
ge: nat -> nat -> bool
ge n O = true
ge O O = true
ge O (S m) = false
ge (S n) (S m) = ge n m

||| return true if n<m,otherwise false
lt: nat -> nat -> bool
lt a b = not (ge a b)

fib: nat -> nat
fib O = O
fib (S O) = (S O)
fib (S (S n)) = add (fib (S n)) (fib n)

instance eq nat where
  eql n1 n2 = eql_nat n1 n2

instance Serialize nat where
  toString O = "Z"
  toString (S n) = "s" ++ (toString n)
