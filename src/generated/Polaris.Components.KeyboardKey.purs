module Polaris.Components.KeyboardKey
  (KeyboardKeyProps, keyboardKey, keyboardKeyRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type KeyboardKeyProps = { children :: UndefinedOr String }

keyboardKey :: forall r. Castable r KeyboardKeyProps => r -> JSX
keyboardKey = elem keyboardKeyRC

foreign import keyboardKeyRC :: ReactComponent KeyboardKeyProps
