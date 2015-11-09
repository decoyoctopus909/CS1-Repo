module list_nat

import nat
import pair
import bool

data list_nat = nil | cons nat list_nat

lO: list_nat
lO = nil

l1: list_nat
l1 = cons O nil

l2: list_nat
l2 = (cons (S O) (cons (S (S O)) nil))

l3: list_nat
l3 = (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))

{-
length l3
length (cons (S O) (cons (S (S O)) (cons (S (S (S O))) nil)))
S (length (cons (S (S O)) (cons (S (S (S O))) nil)))
S (S (length (cons (S (S (S O))) nil)))
(S (S (S (length nil))))
(S (S (S O)))
-}

length: list_nat -> nat
length nil = O
length (cons n l') = S (length l')

append: pair list_nat list_nat -> list_nat
append (mkPair nil t)  = t
append (mkPair (cons h nil) (cons t nil)) = (cons (h) (cons (t) nil))
