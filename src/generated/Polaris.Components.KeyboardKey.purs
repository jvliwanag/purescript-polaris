module Polaris.Components.KeyboardKey
  ( KeyboardKeyProps
  , keyboardKey
  , keyboardKeyRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type KeyboardKeyProps =
  { "children" :: UndefinedOr (String)
  }

keyboardKey :: forall r. Coercible r KeyboardKeyProps => r -> JSX
keyboardKey = element keyboardKeyRC <<< coerce

foreign import keyboardKeyRC :: ReactComponent KeyboardKeyProps
