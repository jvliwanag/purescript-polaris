module Polaris.Components.Icon(IconProps, icon, iconRC, ReactSfc) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type IconProps
  = { accessibilityLabel :: UndefinedOr String
    , backdrop :: UndefinedOr Boolean
    , color
      :: UndefinedOr
         ( StringLit "base"
           |+| StringLit "subdued"
           |+| StringLit "critical"
           |+| StringLit "warning"
           |+| StringLit "highlight"
           |+| StringLit "success"
           |+| StringLit "primary"
         )
    , source :: ReactSfc |+| StringLit "placeholder" |+| String
    }

icon :: forall r. Castable r IconProps => r -> JSX
icon = elem iconRC

foreign import iconRC :: ReactComponent IconProps

foreign import data ReactSfc :: Type
