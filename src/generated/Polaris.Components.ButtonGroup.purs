module Polaris.Components.ButtonGroup
  ( ButtonGroupBaseProps'
  , ButtonGroupBaseProps
  , ButtonGroupProps
  , buttonGroup
  , buttonGroupRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ButtonGroupBaseProps'
  = ( connectedTop :: UndefinedOr Boolean
    , fullWidth :: UndefinedOr Boolean
    , segmented :: UndefinedOr Boolean
    , spacing
      :: UndefinedOr
         (StringLit "extraTight" |+| StringLit "tight" |+| StringLit "loose")
    )

type ButtonGroupBaseProps = { | ButtonGroupBaseProps' }

type ButtonGroupProps = PropsWithChildren ButtonGroupBaseProps'

buttonGroup
  :: forall r
   . Castable
  r
  ButtonGroupBaseProps
  => r
  -> Array JSX
  -> JSX
buttonGroup = elemWithChildren buttonGroupRC

foreign import buttonGroupRC :: ReactComponent ButtonGroupProps
