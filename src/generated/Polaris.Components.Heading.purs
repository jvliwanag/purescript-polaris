module Polaris.Components.Heading
  ( HeadingProps
  , heading
  , headingRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type HeadingProps =
  { "children" :: UndefinedOr (JSX)
  , "element" :: UndefinedOr ((StringLit "h1") |+| (StringLit "h2") |+| (StringLit "h3") |+| (StringLit "h4") |+| (StringLit "h5") |+| (StringLit "h6") |+| (StringLit "p"))
  }

heading :: forall r. Coercible r HeadingProps => r -> JSX
heading = element headingRC <<< coerce

foreign import headingRC :: ReactComponent HeadingProps
