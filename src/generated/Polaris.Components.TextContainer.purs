module Polaris.Components.TextContainer
  ( TextContainerProps
  , textContainer
  , textContainerRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type TextContainerProps =
  { "children" :: UndefinedOr (JSX)
  , "spacing" :: UndefinedOr ((StringLit "tight") |+| (StringLit "loose"))
  }

textContainer :: forall r. Coercible r TextContainerProps => r -> JSX
textContainer = element textContainerRC <<< coerce

foreign import textContainerRC :: ReactComponent TextContainerProps
