module Polaris.Components.Tabs
  ( TabDescriptor
  , tabDescriptor
  , TabsProps
  , tabs
  , tabsRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type TabDescriptor =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: String
  , "id" :: String
  , "panelID" :: UndefinedOr (String)
  , "url" :: UndefinedOr (String)
  }

tabDescriptor :: forall r. Coercible r TabDescriptor => r -> TabDescriptor
tabDescriptor = coerce

type TabsProps =
  { "children" :: UndefinedOr (JSX)
  , "fitted" :: UndefinedOr (Boolean)
  , "selected" :: Number
  , "tabs" :: Array (TabDescriptor)
  , "onSelect" :: UndefinedOr (EffectFn1 (Number) (Unit))
  }

tabs :: forall r. Coercible r TabsProps => r -> JSX
tabs = element tabsRC <<< coerce

foreign import tabsRC :: ReactComponent TabsProps
