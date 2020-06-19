module Polaris.Components.Badge
  ( BadgeProps
  , badge
  , badgeRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type BadgeProps =
  { "children" :: UndefinedOr (String)
  , "progress" :: UndefinedOr ((StringLit "incomplete") |+| (StringLit "partiallyComplete") |+| (StringLit "complete"))
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium"))
  , "status" :: UndefinedOr ((StringLit "success") |+| (StringLit "info") |+| (StringLit "attention") |+| (StringLit "critical") |+| (StringLit "warning") |+| (StringLit "new"))
  }

badge :: forall r. Coercible r BadgeProps => r -> JSX
badge = element badgeRC <<< coerce

foreign import badgeRC :: ReactComponent BadgeProps
