module exam_review

data bool = true | false
data pair a b = mkPair a b
data nat = O | S nat
data Box a = mkBox a

||| Bool

id_bool: bool -> bool
id_bool true = true
id_bool false = false

not: bool -> bool
not true = false
not _ = true

constTrue: bool -> bool
constTrue _ = true

constFalse: bool -> bool
constFalse _ = false

andp: pair bool bool -> bool
andp (mkPair true true) = true
andp (mkPair a b) = false

orp: pair bool bool -> bool
orp (mkPair false false) = false
orp (mkPair a b) = true

xorp: pair bool bool -> bool
xorp (mkPair true false) = true
xorp (mkPair false true) = true
xorp (mkPair a b) = false

nandp: pair bool bool -> bool
nandp (mkPair a b) = not (andp (mkPair a b))


||| Box

unbox: Box bool -> bool
unbox (mkBox a) = a


||| Pair

fst: pair bool bool -> bool
fst (mkPair a b) = a

snd: pair bool bool -> bool
snd (mkPair a b) = b


||| Nat

isZero: nat -> bool
isZero O = true
isZero _ = false

succ: nat -> nat
succ n = S n

pred: nat -> nat
pred O = O
pred (S n) = n

evenb: nat -> bool
evenb O = true
evenb (S O) = false
evenb (S (S n)) = evenb n

oddb: nat -> bool
oddb n = not (evenb n)

addp: pair nat nat -> nat
addp (mkPair O m) = m
addp (mkPair (S n) m) = S (addp (mkPair n m))

multp: pair nat nat -> nat
multp (mkPair O m) = O
multp (mkPair (S O) m) = m
multp (mkPair (S n) m) = addp (mkPair (multp (mkPair n m)) m)

factp: nat -> nat
factp O = O
factp (S n') = multp (mkPair (S n') (factp n'))

fibp: nat -> nat
fibp O = O
fibp (S O) = (S O)
fibp (S (S n)) = addp (mkPair (fibp (S n)) (fibp n))

expp: pair nat nat -> nat
expp (mkPair O m) = O
expp (mkPair n O) = (S O)
expp (mkPair n (S m)) = multp (mkPair (expp (mkPair n m)) n)
