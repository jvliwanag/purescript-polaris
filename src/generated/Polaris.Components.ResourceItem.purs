module Polaris.Components.ResourceItem
  ( Alignment
  , DisableableAction
  , ReactReactElement
  , ResourceItemProps
  , resourceItem
  , resourceItemRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data Alignment :: Type
foreign import data DisableableAction :: Type
foreign import data ReactReactElement :: Type

type ResourceItemProps =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "name" :: UndefinedOr (String)
  , "ariaControls" :: UndefinedOr (String)
  , "ariaExpanded" :: UndefinedOr (Boolean)
  , "id" :: String
  , "media" :: UndefinedOr (ReactReactElement)
  , "persistActions" :: UndefinedOr (Boolean)
  , "shortcutActions" :: UndefinedOr (Array (DisableableAction))
  , "sortOrder" :: UndefinedOr (Number)
  , "url" :: UndefinedOr (String)
  , "external" :: UndefinedOr (Boolean)
  , "onClick" :: UndefinedOr (EffectFn1 (String) (Unit))
  , "children" :: UndefinedOr (JSX)
  , "verticalAlignment" :: UndefinedOr (Alignment)
  }

resourceItem :: forall r. Coercible r ResourceItemProps => r -> JSX
resourceItem = element resourceItemRC <<< coerce

foreign import resourceItemRC :: ReactComponent ResourceItemProps
