module Polaris.Components.Thumbnail
  ( ThumbnailProps
  , thumbnail
  , thumbnailRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type ThumbnailProps =
  { "alt" :: String
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large"))
  , "source" :: String
  }

thumbnail :: forall r. Coercible r ThumbnailProps => r -> JSX
thumbnail = element thumbnailRC <<< coerce

foreign import thumbnailRC :: ReactComponent ThumbnailProps
