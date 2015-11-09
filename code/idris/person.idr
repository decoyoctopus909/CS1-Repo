module Person

import bool

||| A Person has an age in years, a height in inches, 
||| and a gender, true=female, false=male.
record Person where
  constructor mkPerson
  name: String
  age: Nat
  height: Nat
  gender: bool

--Having written such an implementation, we can now create values of
--this type to represent several different people.

getName: Person -> String
getName (mkPerson name age height gender) = name

getAge: Person -> Nat
getAge (mkPerson name age height gender) = age

getHeight: Person -> Nat
getHeight (mkPerson name age height gender) = height

getGender: Person -> bool
getGender (mkPerson name age height gender) = gender

--Having written such projection functions, we can now recover the field
--values of given /Person/ records. Here, for example, we find Tom's
--age.

