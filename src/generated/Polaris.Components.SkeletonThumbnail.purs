module Polaris.Components.SkeletonThumbnail
  ( SkeletonThumbnailProps
  , skeletonThumbnail
  , skeletonThumbnailRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SkeletonThumbnailProps =
  { "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large"))
  }

skeletonThumbnail :: forall r. Coercible r SkeletonThumbnailProps => r -> JSX
skeletonThumbnail = element skeletonThumbnailRC <<< coerce

foreign import skeletonThumbnailRC :: ReactComponent SkeletonThumbnailProps
