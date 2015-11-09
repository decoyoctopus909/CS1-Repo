module listExample

import guitar
import list

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

-- List of strings of list
mapStrings: list Guitar -> list Nat
mapStrings nil = nil
mapStrings (h::t) = (strings h)::(mapStrings t)
