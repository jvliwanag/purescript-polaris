module Polaris.Components.DisplayText
  ( DisplayTextProps
  , displayText
  , displayTextRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type DisplayTextProps =
  { "children" :: UndefinedOr (JSX)
  , "element" :: UndefinedOr ((StringLit "h1") |+| (StringLit "h2") |+| (StringLit "h3") |+| (StringLit "h4") |+| (StringLit "h5") |+| (StringLit "h6") |+| (StringLit "p"))
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large") |+| (StringLit "extraLarge"))
  }

displayText :: forall r. Coercible r DisplayTextProps => r -> JSX
displayText = element displayTextRC <<< coerce

foreign import displayTextRC :: ReactComponent DisplayTextProps
