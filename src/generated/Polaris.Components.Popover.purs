module Polaris.Components.Popover
  ( PopoverBaseProps'
  , PopoverBaseProps
  , PopoverProps
  , popover
  , popoverRC
  , PopoverCloseSource
  ) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Literals (BooleanLit, StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type PopoverBaseProps'
  = ( activator :: JSX
    , activatorWrapper :: UndefinedOr String
    , active :: Boolean
    , ariaHaspopup
      :: UndefinedOr
         ( BooleanLit "false"
           |+| BooleanLit "true"
           |+| StringLit "true"
           |+| StringLit "false"
           |+| StringLit "menu"
           |+| StringLit "listbox"
           |+| StringLit "tree"
           |+| StringLit "grid"
           |+| StringLit "dialog"
         )
    , autofocusTarget
      :: UndefinedOr
         (StringLit "none" |+| StringLit "first-node" |+| StringLit "container")
    , colorScheme
      :: UndefinedOr
         (StringLit "light" |+| StringLit "dark" |+| StringLit "inverse")
    , fixed :: UndefinedOr Boolean
    , fluidContent :: UndefinedOr Boolean
    , fullHeight :: UndefinedOr Boolean
    , fullWidth :: UndefinedOr Boolean
    , hideOnPrint :: UndefinedOr Boolean
    , preferInputActivator :: UndefinedOr Boolean
    , preferredAlignment
      :: UndefinedOr
         (StringLit "left" |+| StringLit "right" |+| StringLit "center")
    , preferredPosition
      :: UndefinedOr
         (StringLit "above" |+| StringLit "below" |+| StringLit "mostSpace")
    , preventFocusOnClose :: UndefinedOr Boolean
    , sectioned :: UndefinedOr Boolean
    , onClose :: EffectFn1 PopoverCloseSource Unit
    )

type PopoverBaseProps = { | PopoverBaseProps' }

type PopoverProps = PropsWithChildren PopoverBaseProps'

popover :: forall r. Castable r PopoverBaseProps => r -> Array JSX -> JSX
popover = elemWithChildren popoverRC

foreign import popoverRC :: ReactComponent PopoverProps

foreign import data PopoverCloseSource :: Type
