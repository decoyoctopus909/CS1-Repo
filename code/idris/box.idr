module Box

-- A polymorphic Box type

-- Type constructor with single type argument

import bool
import eq
import Serialize

data Box a = mkBox a

-- Function, return the value in a given box

unbox: Box a -> a
unbox (mkBox b) = b

-- typeclass instances / overloaded operators

instance (eq a) => eq (Box a) where
  eql (mkBox v1) (mkBox v2) = eql v1 v2

instance (Serialize a) => Serialize (Box a) where
  toString (mkBox b) = "(" ++ (toString b) ++ ")"
