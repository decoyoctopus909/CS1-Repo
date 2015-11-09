module natTest

import nat
import bool

-- zero
z: nat
z = O

-- one
o: nat
o = S O

-- two
t: nat
t = S (S O)

-- three
r: nat
r = S (S (S O))

-- four
f: nat
f = S (S (S (S O)))

-- five
v: nat
v = S (S (S (S (S O))))

-- six
s: nat
s = S (S (S (S (S (S O)))))

||| expected return true
a: bool
a = evenb O

||| expected return false
b: bool
b = evenb (S O)

||| expected return true
c: bool
c = evenb t

||| expected return false
d: bool
d = evenb r

||| expected return true
e: bool
e = evenb f

||| add tests

add1: nat
add1 = add O O
--expect O

add2: nat
add2 = add o r
---expect (S (S (S O)))

add3: nat
add3 = add O r
--expect (S (S (S (S O))))

add4: nat
add4 = add v t
--expect (S (S (S (S (S (S (S O)))))))


||| mult tests

mult1: nat
mult1 = mult O t
--expect O

mult2: nat
mult2 = mult o nat.t
--expect (S (S O)

mult3: nat
mult3 = mult t t
--expect (S (S (S (S O))))

mult4: nat
mult4 = mult f t
--expect 8

||| fact tests

fact1: nat
fact1 = fact O
--expect O

fact2: nat
fact2 = fact (S (S O))
--expect (S (S O))

fact3: nat
fact3 = fact nat.r
--expect (S (S (S (S (S (S O))))))

fact4: nat
fact4 = fact f
--expect 24

||| sub tests

sub1: nat
sub1 = sub O t
--expect O

sub2: nat
sub2 = sub r O
--expect (S (S (S O)))

sub3: nat
sub3 = sub r t
--expect (S O)

sub4: nat
sub4 =  sub v t
--expect (S (S (S O)))

||| le tests

le1: bool
le1 = le O r
--expect true

le2: bool
le2 = le t O
--expect false

le3: bool
le3 = le o o
--expect true

le4: bool
le4 = le r t
--expect false


||| ex tests

ex1: nat
ex1 = ex O r
--expect O

ex2: nat
ex2 = ex f O
--expect (S O)

ex3: nat
ex3 = ex r t
--expect 9

ex4: nat
ex4 = ex r r
--expect 27

||| eq tests

eq1: bool
eq1 = eq_nat O O
--expect true

eq2: bool
eq2 = eq_nat (S O) O
--expect false

eq3: bool
eq3 = eq_nat O t
--expect false

eq4: bool
eq4 = eq_nat r r
--expect true

||| gt tests

gt1: bool
gt1 = gt r O
--expect true

gt2: bool
gt2 = gt O t
--expect false

gt3: bool
gt3 = gt r t
--expect true

gt4: bool
gt4 = gt o f
--expect false

||| ge tests

ge1: bool
ge1 = ge O O
--expect true

ge2: bool
ge2 = ge t O
--expect true

ge3: bool
ge3 = ge O r
--expect false

ge4: bool
ge4 = ge r v
--expect false

||| lt tests

lt1: bool
lt1 = lt O O
--expect false

lt2: bool
lt2 = lt O r
--expect true

lt3: bool
lt3 = lt t o
--expect false

lt4: bool
lt4 = lt f v
--expect true
