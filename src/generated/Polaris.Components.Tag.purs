module Polaris.Components.Tag
  ( TagProps
  , tag
  , tagRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type TagProps =
  { "children" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "onClick" :: UndefinedOr (Effect (Unit))
  , "onRemove" :: UndefinedOr (Effect (Unit))
  }

tag :: forall r. Coercible r TagProps => r -> JSX
tag = element tagRC <<< coerce

foreign import tagRC :: ReactComponent TagProps
