module unit

-- An abstract data type with only one value
-- and one function from this type to itself

import bool
import eq
import Serialize

-- data type
data unit = mkUnit

-- function
id_unit: unit -> unit
id_unit mkUnit = mkUnit

-- overload operators

instance eq unit where
  eql u1 u2 = true

instance Serialize unit where
  toString u = "()"
