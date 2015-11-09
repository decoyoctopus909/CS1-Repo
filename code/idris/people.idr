module People

import person
import list
import bool
import eq
import Serialize

-- a few Persons

tom: Person
tom = mkPerson "Tom" 19 56 false

mary: Person
mary = mkPerson "Mary" 20 59 true

ge: Person
ge = mkPerson "Ge" 21 64 true

daryl: Person 
daryl = mkPerson "Daryl" 19 71 false

-- a list of Persons

people: list Person
people = tom::mary::ge::daryl::nil

men: list Person
men = tom::daryl::nil

women: list Person
women = mary::ge::nil

