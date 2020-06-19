module Polaris.Components.List
  ( ListProps
  , list
  , listRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type ListProps =
  { "children" :: UndefinedOr (JSX)
  , "type" :: UndefinedOr ((StringLit "bullet") |+| (StringLit "number"))
  }

list :: forall r. Coercible r ListProps => r -> JSX
list = element listRC <<< coerce

foreign import listRC :: ReactComponent ListProps
