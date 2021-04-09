module Polaris.Components.Stack
  ( StackBaseProps'
  , StackBaseProps
  , StackProps
  , stack
  , stackRC
  , StackItemBaseProps'
  , StackItemBaseProps
  , StackItemProps
  , stackItem
  , stackItemRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type StackBaseProps'
  = ( alignment
      :: UndefinedOr
         ( StringLit "leading"
           |+| StringLit "trailing"
           |+| StringLit "center"
           |+| StringLit "fill"
           |+| StringLit "baseline"
         )
    , distribution
      :: UndefinedOr
         ( StringLit "equalSpacing"
           |+| StringLit "leading"
           |+| StringLit "trailing"
           |+| StringLit "center"
           |+| StringLit "fill"
           |+| StringLit "fillEvenly"
         )
    , spacing
      :: UndefinedOr
         ( StringLit "extraTight"
           |+| StringLit "tight"
           |+| StringLit "loose"
           |+| StringLit "extraLoose"
           |+| StringLit "none"
         )
    , vertical :: UndefinedOr Boolean
    , wrap :: UndefinedOr Boolean
    )

type StackBaseProps = { | StackBaseProps' }

type StackProps = PropsWithChildren StackBaseProps'

stack :: forall r. Castable r StackBaseProps => r -> Array JSX -> JSX
stack = elemWithChildren stackRC

foreign import stackRC :: ReactComponent StackProps

type StackItemBaseProps' = ( fill :: UndefinedOr Boolean )

type StackItemBaseProps = { | StackItemBaseProps' }

type StackItemProps = PropsWithChildren StackItemBaseProps'

stackItem :: forall r. Castable r StackItemBaseProps => r -> Array JSX -> JSX
stackItem = elemWithChildren stackItemRC

foreign import stackItemRC :: ReactComponent StackItemProps
