module Polaris.Components.Link
  ( LinkProps
  , link
  , linkRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type LinkProps =
  { "children" :: UndefinedOr (JSX)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "monochrome" :: UndefinedOr (Boolean)
  , "url" :: UndefinedOr (String)
  , "onClick" :: UndefinedOr (Effect (Unit))
  }

link :: forall r. Coercible r LinkProps => r -> JSX
link = element linkRC <<< coerce

foreign import linkRC :: ReactComponent LinkProps
