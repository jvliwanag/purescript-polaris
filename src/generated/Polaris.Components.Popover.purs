module Polaris.Components.Popover
  ( PopoverCloseSource
  , ReactElement
  , PopoverProps
  , popover
  , popoverRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data PopoverCloseSource :: Type
foreign import data ReactElement :: Type

type PopoverProps =
  { "activator" :: ReactElement
  , "activatorWrapper" :: UndefinedOr (String)
  , "active" :: Boolean
  , "ariaHaspopup" :: UndefinedOr ((BooleanLit "false") |+| (BooleanLit "true") |+| (StringLit "true") |+| (StringLit "false") |+| (StringLit "menu") |+| (StringLit "listbox") |+| (StringLit "tree") |+| (StringLit "grid") |+| (StringLit "dialog"))
  , "children" :: UndefinedOr (JSX)
  , "fixed" :: UndefinedOr (Boolean)
  , "fluidContent" :: UndefinedOr (Boolean)
  , "fullHeight" :: UndefinedOr (Boolean)
  , "fullWidth" :: UndefinedOr (Boolean)
  , "preferInputActivator" :: UndefinedOr (Boolean)
  , "preferredAlignment" :: UndefinedOr ((StringLit "left") |+| (StringLit "center") |+| (StringLit "right"))
  , "preferredPosition" :: UndefinedOr ((StringLit "above") |+| (StringLit "below") |+| (StringLit "mostSpace"))
  , "preventAutofocus" :: UndefinedOr (Boolean)
  , "sectioned" :: UndefinedOr (Boolean)
  , "onClose" :: EffectFn1 (PopoverCloseSource) (Unit)
  }

popover :: forall r. Coercible r PopoverProps => r -> JSX
popover = element popoverRC <<< coerce

foreign import popoverRC :: ReactComponent PopoverProps
