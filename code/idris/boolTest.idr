module boolTest

import bool
import eq
import Serialize

--Exam Problem #5

{-||| pand tests

pand1: bool
pand1 = pand true true
--expect true

pand2: bool
pand2 = pand true false
--expect false

pand3: bool
pand3 = pand false true
--expect false

pand4: bool
pand4 = pand false false

||| por tests

por1: bool
por1 = por true true
--expect true

por2: bool
por2 = por true false
--expect true

por3: bool
por3 = por false true
--expect true

por4: bool
por4 = por false false
--expect false

||| pxor tests

pxor1: bool
pxor1 = pxor true true
--expect false

pxor2: bool
pxor2 = pxor true false
--expect true

pxor3: bool
pxor3 = pxor false true
--expect true

pxor4: bool
pxor4 = pxor false false
--expect false

||| pnand tests

pnand1: bool
pnand1 = pnand true true
--expect false

pnand2: bool
pnand2 = pnand true false
--expect true

pnand3: bool
pnand3 = pnand false true
--expect true

pnand4: bool
pnand4 = pnand false false
--expect true
-}
||| and tests

and1: bool
and1 = and true true
--expect true

and2: bool
and2 = and true false
--expect false

and3: bool
and3 = and false true
--expect false

and4: bool
and4 = and false false
--expect false

||| or tests

or1: bool
or1 = or true true
--expect true

or2: bool
or2 = or true false
--expect true

or3: bool
or3 = or false true
--expect false

or4: bool
or4 = or false false
--expect false

||| nand tests

nand1: bool
nand1 = nand true true
--expect false

nand2: bool
nand2 = nand true false
--expect true

nand3: bool
nand3 = nand false true

nand4: bool
nand4 = nand false false
--expect true

||| xor tests

xor1: bool
xor1 = xor true true
--expect false

xor2: bool
xor2 = xor true false
--expect true

xor3: bool
xor3 = xor false true
--expect true

xor4: bool
xor4 = xor false false
--expect false

s: String
s = toString true
