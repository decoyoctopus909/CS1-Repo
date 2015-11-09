module set_specTest

import set_adt_hw
import bool
import option
import pair
import list
import nat
import eq
import Serialize
import list
import ite

||| lists and sets for test cases

l0: list nat
l0 = nil

l1: list nat
l1 = (O::(S O)::(S (S O))::nil)

l2: list nat
l2 = ((S O)::(S (S (S (S O))))::(S (S O))::nil)

l3: list nat
l3 = ((S O)::nil)

s0: set nat
s0 = mkSet l0

s1: set nat
s1 = mkSet l1

s2: set nat
s2 = mkSet l2

s3: set nat
s3 = mkSet l3

||| test cases
insert1: set nat
insert1 = set_insert (S O) s0
-- expect mkSet (S O::nil)

insert2: set nat
insert2 = set_insert (S (S O)) s2
-- expect mkSet (S O::(S (S (S (S O))))::(S (S O))::nil)


remove1: set nat
remove1 = set_remove (S O) s1
-- expect mkSet ((S (S O))::nil)

remove2: set nat
remove2 = set_remove (S (S (S (S O)))) s2
-- expect mkSet ((S (S O))::nil)


card1: nat
card1 = set_cardinality s2
-- expect (S (S (S O)))

card2: nat
card2 = set_cardinality s0
-- expect O


memb1: bool
memb1 = set_member O s1
-- expect true

memb2: bool
memb2 = set_member (S (S (S O))) s2
-- expect false


union1: set nat
union1 = set_union s0 s3
-- expect mkSet (S O::nil)

union2: set nat
union2 = set_union s1 s3
-- expect mkSet (O::(S (S O)::nil::(S O)::nil))


inter1: set nat
inter1 = set_intersection s0 s3
-- expect mkSet nil

inter2: set nat
inter2 = set_intersection s1 s2
-- expect mkSet ((S O)::(S (S O))::nil)


diff1: set nat
diff1 = set_difference s2 s1
-- expect mkSet (O::(S O)::(S (S (S (S O))))::nil)

diff2: set nat
diff2 = set_difference s3 s1
--expect mkSet nil


forall1: bool
forall1 = set_forall evenb (mkSet (O::(S (S O))::nil))
--expect true

forall2: bool
forall2 = set_forall evenb s2
--expect false


exists1: bool
exists1 = set_exists evenb s2
-- expect true

exists2: bool
exists2 = set_exists evenb s3
-- expect false


wit1: option nat
wit1 = set_witness evenb s1
-- expect some O

wit2: option nat
wit2 = set_witness evenb s0
-- expect none


prod1: set (pair nat nat)
prod1 = set_product s0 s1
-- expect mkSet nil

prod2: set (pair nat nat)
prod2 = set_product s2 s3
-- expect mkSet (mkPair (S O) (S O)::mkPair (S (S (S (S O)))) (S
  -- O)::mkPair (S (S O) (S O)::nil)


eql1: bool
eql1 = eql_set s1 s1
-- expect true

eql2: bool
eql2 = eql_set s2 s3
-- expect false


string1: String
string1 = set_toString s1
-- expect "{Z,sZ,ssZ}"

string2: String
string2 = set_toString s0
-- expect "{}"
