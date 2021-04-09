module Polaris.Components.Spinner
  (SpinnerProps, spinner, spinnerRC, NewDesignLanguageColor) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type SpinnerProps
  = { accessibilityLabel :: UndefinedOr String
    , color
      :: UndefinedOr
         ( StringLit "white"
           |+| StringLit "teal"
           |+| StringLit "inkLightest"
           |+| NewDesignLanguageColor
         )
    , hasFocusableParent :: UndefinedOr Boolean
    , size :: UndefinedOr (StringLit "small" |+| StringLit "large")
    }

spinner :: forall r. Castable r SpinnerProps => r -> JSX
spinner = elem spinnerRC

foreign import spinnerRC :: ReactComponent SpinnerProps

type NewDesignLanguageColor = StringLit "highlight"
