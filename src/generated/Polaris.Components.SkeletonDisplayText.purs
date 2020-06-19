module Polaris.Components.SkeletonDisplayText
  ( SkeletonDisplayTextProps
  , skeletonDisplayText
  , skeletonDisplayTextRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SkeletonDisplayTextProps =
  { "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large") |+| (StringLit "extraLarge"))
  }

skeletonDisplayText :: forall r. Coercible r SkeletonDisplayTextProps => r -> JSX
skeletonDisplayText = element skeletonDisplayTextRC <<< coerce

foreign import skeletonDisplayTextRC :: ReactComponent SkeletonDisplayTextProps
