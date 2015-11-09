module listTest

import list
import bool
import nat


||| example #0: length of [O]
lO: nat
lO = length (O :: nil)

||| example #1: length of [true]
l1: nat
l1 = length (true :: nil)

||| example #2: length of []
l2: nat
l2 = length nil {a=nat}

||| map test
map1: list bool
map1 = map evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)

||| filter test
filt1: list nat
filt1 = filter evenb (O::(S O)::(S (S O))::(S (S (S (S O))))::nil)
