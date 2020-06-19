module Polaris.Components.Caption
  ( CaptionProps
  , caption
  , captionRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type CaptionProps =
  { "children" :: UndefinedOr (JSX)
  }

caption :: forall r. Coercible r CaptionProps => r -> JSX
caption = element captionRC <<< coerce

foreign import captionRC :: ReactComponent CaptionProps
