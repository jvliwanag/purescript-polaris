module Polaris.Components.Scrollable
  ( ScrollableProps
  , scrollable
  , scrollableRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type ScrollableProps =
  { "children" :: UndefinedOr (JSX)
  , "hint" :: UndefinedOr (Boolean)
  , "horizontal" :: UndefinedOr (Boolean)
  , "shadow" :: UndefinedOr (Boolean)
  , "vertical" :: UndefinedOr (Boolean)
  , "onScrolledToBottom" :: UndefinedOr (Effect (Unit))
  }

scrollable :: forall r. Coercible r ScrollableProps => r -> JSX
scrollable = element scrollableRC <<< coerce

foreign import scrollableRC :: ReactComponent ScrollableProps
