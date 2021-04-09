module Polaris.Components.Badge(BadgeProps, badge, badgeRC) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type BadgeProps
  = { children :: UndefinedOr String
    , progress
      :: UndefinedOr
         ( StringLit "incomplete"
           |+| StringLit "partiallyComplete"
           |+| StringLit "complete"
         )
    , size :: UndefinedOr (StringLit "small" |+| StringLit "medium")
    , status
      :: UndefinedOr
         ( StringLit "success"
           |+| StringLit "info"
           |+| StringLit "attention"
           |+| StringLit "critical"
           |+| StringLit "warning"
           |+| StringLit "new"
         )
    }

badge :: forall r. Castable r BadgeProps => r -> JSX
badge = elem badgeRC

foreign import badgeRC :: ReactComponent BadgeProps
