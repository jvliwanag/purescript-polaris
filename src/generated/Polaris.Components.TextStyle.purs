module Polaris.Components.TextStyle
  ( TextStyleProps
  , textStyle
  , textStyleRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type TextStyleProps =
  { "children" :: UndefinedOr (JSX)
  , "variation" :: UndefinedOr ((StringLit "positive") |+| (StringLit "negative") |+| (StringLit "strong") |+| (StringLit "subdued") |+| (StringLit "code"))
  }

textStyle :: forall r. Coercible r TextStyleProps => r -> JSX
textStyle = element textStyleRC <<< coerce

foreign import textStyleRC :: ReactComponent TextStyleProps
