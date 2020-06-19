module Polaris.Components.VisuallyHidden
  ( VisuallyHiddenProps
  , visuallyHidden
  , visuallyHiddenRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type VisuallyHiddenProps =
  { "children" :: UndefinedOr (JSX)
  }

visuallyHidden :: forall r. Coercible r VisuallyHiddenProps => r -> JSX
visuallyHidden = element visuallyHiddenRC <<< coerce

foreign import visuallyHiddenRC :: ReactComponent VisuallyHiddenProps
