module guitar

import bool

||| A record type that is equivalent to
||| (data Guitar = MkGuitar String bool Nat)
||| but where we give names to the fields. A guitar has a name, a body type, and a number of strings. A body type of "True" is a solid body and "False" is a hollow body.
record Guitar where
       constructor MkGuitar
       name : String
       body : bool
       strings : Nat

||| Fender Stratocaster
f: Guitar
f = MkGuitar "Fender Stratocaster" true 6

||| Rickenbacker 330 12
r: Guitar
r = MkGuitar "Rickenbacker 330 12" false 12

||| Ibanez GSR200
ib: Guitar
ib = MkGuitar "Ibanez GSR200" true 4
