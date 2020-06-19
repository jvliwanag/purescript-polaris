module Polaris.Components.Sheet
  ( SheetProps
  , sheet
  , sheetRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SheetProps =
  { "children" :: JSX
  , "open" :: Boolean
  , "onClose" :: Effect (Unit)
  , "onEntered" :: UndefinedOr (Effect (Unit))
  , "onExit" :: UndefinedOr (Effect (Unit))
  }

sheet :: forall r. Coercible r SheetProps => r -> JSX
sheet = element sheetRC <<< coerce

foreign import sheetRC :: ReactComponent SheetProps
