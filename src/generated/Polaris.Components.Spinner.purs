module Polaris.Components.Spinner
  ( NewDesignLanguageColor
  , SpinnerProps
  , spinner
  , spinnerRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type NewDesignLanguageColor = StringLit "highlight"

type SpinnerProps =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "color" :: UndefinedOr ((StringLit "white") |+| (StringLit "teal") |+| (StringLit "inkLightest") |+| (NewDesignLanguageColor))
  , "hasFocusableParent" :: UndefinedOr (Boolean)
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "large"))
  }

spinner :: forall r. Coercible r SpinnerProps => r -> JSX
spinner = element spinnerRC <<< coerce

foreign import spinnerRC :: ReactComponent SpinnerProps
