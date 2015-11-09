module Box

data nat = O | S nat

data Box a = mkBox a

unbox: Box a -> a
unbox (mkBox a) = a
