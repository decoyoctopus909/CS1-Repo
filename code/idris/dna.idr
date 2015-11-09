module dna

-- Completed with the help of DJ

import pair
import list
import bool
import ite
import nat

data base = A | T | C | G

complement_base: base -> base
complement_base A = T
complement_base T = A
complement_base C = G
complement_base G = C

complement_strand: list base -> list base
complement_strand (h::t) = map complement_base (h::t)

strand1: list (pair base base) -> list base
strand1 (h::t) = map fst (h::t)

strand2: list (pair base base) -> list base
strand2 (h::t) = map snd (h::t)

-- complete: list base -> list (pair base base)
-- complete (h::t) = (mkPair h (complement_base h))::complete t

switch: base -> pair base base
switch b = (mkPair b (complement_base b))

complete: list base -> list (pair base base)
complete (h::t) = map switch (h::t)

changeBase: base -> base -> nat
changeBase A A = (S O)
changeBase T T = (S O)
changeBase G G = (S O)
changeBase C C = (S O)
changeBase _ _ = O

changeListBase: base -> list base -> list nat
changeListBase b (h::t) = map (changeBase b) (h::t)

countBase: base -> list base -> nat
countBase b (h::t) = list.foldr add O (changeListBase b (h::t))
