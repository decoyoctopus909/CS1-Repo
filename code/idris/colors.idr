module colors

import pair
import bool
import option

%default total

data color = red | green | blue | yellow | magenta | cyan

complement: color -> color
complement red = cyan
complement green = magenta
complement blue = yellow
complement cyan = red
complement magenta = green
complement yellow = blue

additive: color -> bool
additive red = true
additive blue = true
additive green = true
additive _ = false

subtractive: color -> bool
subtractive t = not (additive t)

complements: pair color color -> bool
complements (mkPair red cyan) = true
complements (mkPair green magenta) = true
complements (mkPair blue yellow) = true
complements (mkPair cyan red) = true
complements (mkPair magenta green) = true
complements (mkPair yellow blue) = true
complements (mkPair a b) = false

mixink: pair color color -> option color
mixink (mkPair magenta yellow) = some red
mixink (mkPair yellow magenta) = some red
mixink (mkPair magenta cyan) = some blue
mixink (mkPair cyan magenta) = some blue
mixink (mkPair cyan yellow) =  some green
mixink (mkPair yellow cyan) = some green
mixink _ = none
