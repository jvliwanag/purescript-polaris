module Polaris.Components.SkeletonDisplayText
  (SkeletonDisplayTextProps, skeletonDisplayText, skeletonDisplayTextRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type SkeletonDisplayTextProps
  = { size
      :: UndefinedOr
         ( StringLit "small"
           |+| StringLit "medium"
           |+| StringLit "large"
           |+| StringLit "extraLarge"
         )
    }

skeletonDisplayText :: forall r. Castable r SkeletonDisplayTextProps => r -> JSX
skeletonDisplayText = elem skeletonDisplayTextRC

foreign import skeletonDisplayTextRC :: ReactComponent SkeletonDisplayTextProps
