module Polaris.Components.SettingToggle
  ( ComplexAction
  , complexAction
  , FunctionComponent
  , SettingToggleProps
  , settingToggle
  , settingToggleRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type ComplexAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "destructive" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "id" :: UndefinedOr (String)
  , "loading" :: UndefinedOr (Boolean)
  , "target" :: UndefinedOr ((StringLit "ADMIN_PATH") |+| (StringLit "REMOTE") |+| (StringLit "APP"))
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

complexAction :: forall r. Coercible r ComplexAction => r -> ComplexAction
complexAction = coerce
foreign import data FunctionComponent :: Type

type SettingToggleProps =
  { "action" :: UndefinedOr (ComplexAction)
  , "children" :: UndefinedOr (JSX)
  , "enabled" :: UndefinedOr (Boolean)
  }

settingToggle :: forall r. Coercible r SettingToggleProps => r -> JSX
settingToggle = element settingToggleRC <<< coerce

foreign import settingToggleRC :: ReactComponent SettingToggleProps
