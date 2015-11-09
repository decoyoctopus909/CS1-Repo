module listExample

import guitar
import list
import relation
import bool
import pair

||| Fender Stratocaster
fn: String
fn = name f

fb: bool
fb = body f

fs: Nat
fs = strings f

||| Rickenbacker 330 12

rn: String
rn = name r

rb: bool
rb = body r

rs: Nat
rs = strings r

||| Ibanez GSR200
ibn: String
ibn = name ib

ibb: bool
ibb = body ib

ibs: Nat
ibs = strings ib

-- List of all guitars
guitars: list Guitar
guitars = f :: r :: ib :: nil

-- List of solid body guitrs
solid: list Guitar
solid = f :: ib :: nil

-- List of standard, non-bass guitars
standard: list Guitar
standard = f :: r :: nil

-- List of bass guitars
bass: list Guitar
bass = ib :: nil

-- List of strings of list guitars
mapStrings: list Nat
mapStrings = map strings guitars

||| all tests below apply only to solid body (true) guitars
guitarNames: String
guitarNames = query2 guitars body name (++) ""

totalStrings: Nat
totalStrings = query2 guitars body strings plus 0

countGuitars: Nat
countGuitars = count_rel guitars body

sumStrings: Nat
sumStrings = sum_rel guitars body strings

aveStrings: pair Nat Nat
aveStrings = ave_rel guitars body strings
