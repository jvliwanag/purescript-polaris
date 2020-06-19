module Polaris.Components.Stack
  ( StackProps
  , stack
  , stackRC
  , StackItemProps
  , stackItem
  , stackItemRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type StackProps =
  { "alignment" :: UndefinedOr ((StringLit "leading") |+| (StringLit "trailing") |+| (StringLit "center") |+| (StringLit "fill") |+| (StringLit "baseline"))
  , "children" :: UndefinedOr (JSX)
  , "distribution" :: UndefinedOr ((StringLit "equalSpacing") |+| (StringLit "leading") |+| (StringLit "trailing") |+| (StringLit "center") |+| (StringLit "fill") |+| (StringLit "fillEvenly"))
  , "spacing" :: UndefinedOr ((StringLit "extraTight") |+| (StringLit "tight") |+| (StringLit "loose") |+| (StringLit "extraLoose") |+| (StringLit "none"))
  , "vertical" :: UndefinedOr (Boolean)
  , "wrap" :: UndefinedOr (Boolean)
  }

stack :: forall r. Coercible r StackProps => r -> JSX
stack = element stackRC <<< coerce

foreign import stackRC :: ReactComponent StackProps

type StackItemProps =
  { "fill" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr (JSX)
  }

stackItem :: forall r. Coercible r StackItemProps => r -> JSX
stackItem = element stackItemRC <<< coerce

foreign import stackItemRC :: ReactComponent StackItemProps
