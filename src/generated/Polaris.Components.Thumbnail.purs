module Polaris.Components.Thumbnail
  (ThumbnailProps, thumbnail, thumbnailRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ThumbnailProps
  = { alt :: String
    , size
      :: UndefinedOr
         (StringLit "small" |+| StringLit "medium" |+| StringLit "large")
    , source :: String
    }

thumbnail :: forall r. Castable r ThumbnailProps => r -> JSX
thumbnail = elem thumbnailRC

foreign import thumbnailRC :: ReactComponent ThumbnailProps
