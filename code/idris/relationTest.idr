module relationTest

import relation
import list
import nat
import bool
import pair
import people
import person

||| query2 tests
years: Nat
years = query2 people gender age plus 0

totalInches: Nat
totalInches = query2 people gender height plus 0

names: String
names = query2 people gender name (++) ""

countWomen: Nat
countWomen = count_rel people gender

sumAge: Nat
sumAge = sum_rel people gender age

||| interpreted as fraction
aveAge: pair Nat Nat
aveAge = ave_rel people gender age

sumHeight: Nat
sumHeight = sum_rel people gender height

||| interpreted as fraction
aveHeight: pair Nat Nat
aveHeight = ave_rel people gender height
