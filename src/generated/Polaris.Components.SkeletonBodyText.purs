module Polaris.Components.SkeletonBodyText
  ( SkeletonBodyTextProps
  , skeletonBodyText
  , skeletonBodyTextRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SkeletonBodyTextProps =
  { "lines" :: UndefinedOr (Number)
  }

skeletonBodyText :: forall r. Coercible r SkeletonBodyTextProps => r -> JSX
skeletonBodyText = element skeletonBodyTextRC <<< coerce

foreign import skeletonBodyTextRC :: ReactComponent SkeletonBodyTextProps
