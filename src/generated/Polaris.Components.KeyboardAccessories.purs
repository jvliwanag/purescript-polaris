module Polaris.Components.KeyboardAccessories
  (KeyboardAccessoriesProps, keyboardAccessories, keyboardAccessoriesRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type KeyboardAccessoriesProps = {}

keyboardAccessories :: forall r. Castable r KeyboardAccessoriesProps => r -> JSX
keyboardAccessories = elem keyboardAccessoriesRC

foreign import keyboardAccessoriesRC :: ReactComponent KeyboardAccessoriesProps
