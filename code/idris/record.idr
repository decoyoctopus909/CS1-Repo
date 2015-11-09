record Person where
  constructor MkPerson
  name : String
  age : Nat
  
newName: Person -> String -> Person
newName p n = record
