module Polaris.Components.ButtonGroup
  ( ButtonGroupProps
  , buttonGroup
  , buttonGroupRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type ButtonGroupProps =
  { "children" :: UndefinedOr (JSX)
  , "connectedTop" :: UndefinedOr (Boolean)
  , "fullWidth" :: UndefinedOr (Boolean)
  , "segmented" :: UndefinedOr (Boolean)
  }

buttonGroup :: forall r. Coercible r ButtonGroupProps => r -> JSX
buttonGroup = element buttonGroupRC <<< coerce

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
