module Polaris.Components.SettingToggle
  ( SettingToggleBaseProps'
  , SettingToggleBaseProps
  , SettingToggleProps
  , settingToggle
  , settingToggleRC
  , ComplexAction
  , complexAction
  , ReactSfc
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type SettingToggleBaseProps'
  = ( action :: UndefinedOr ComplexAction, enabled :: UndefinedOr Boolean )

type SettingToggleBaseProps = { | SettingToggleBaseProps' }

type SettingToggleProps = PropsWithChildren SettingToggleBaseProps'

settingToggle
  :: forall r
   . Castable
  r
  SettingToggleBaseProps
  => r
  -> Array JSX
  -> JSX
settingToggle = elemWithChildren settingToggleRC

foreign import settingToggleRC :: ReactComponent SettingToggleProps

type ComplexAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , icon :: UndefinedOr (ReactSfc |+| StringLit "placeholder" |+| String)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , outline :: UndefinedOr Boolean
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

complexAction :: forall r. Castable r ComplexAction => r -> ComplexAction
complexAction = cast

foreign import data ReactSfc :: Type
