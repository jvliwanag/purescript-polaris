module Polaris.Components.Modal
  ( AppBridgeAction
  , appBridgeAction
  , ComplexAction
  , complexAction
  , FunctionComponent
  , SyntheticEvent
  , ModalProps
  , modal
  , modalRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type AppBridgeAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "destructive" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "target" :: UndefinedOr ((StringLit "ADMIN_PATH") |+| (StringLit "REMOTE") |+| (StringLit "APP"))
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

appBridgeAction :: forall r. Coercible r AppBridgeAction => r -> AppBridgeAction
appBridgeAction = coerce
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
foreign import data SyntheticEvent :: Type

type ModalProps =
  { "children" :: UndefinedOr (JSX)
  , "footer" :: UndefinedOr (JSX)
  , "iFrameName" :: UndefinedOr (String)
  , "instant" :: UndefinedOr (Boolean)
  , "large" :: UndefinedOr (Boolean)
  , "limitHeight" :: UndefinedOr (Boolean)
  , "loading" :: UndefinedOr (Boolean)
  , "message" :: UndefinedOr (String)
  , "open" :: Boolean
  , "primaryAction" :: UndefinedOr ((AppBridgeAction) |+| (ComplexAction))
  , "secondaryActions" :: UndefinedOr ((Array (AppBridgeAction)) |+| (Array (ComplexAction)))
  , "sectioned" :: UndefinedOr (Boolean)
  , "size" :: UndefinedOr ((StringLit "Small") |+| (StringLit "Medium") |+| (StringLit "Large") |+| (StringLit "Full"))
  , "src" :: UndefinedOr (String)
  , "title" :: UndefinedOr ((String) |+| (JSX))
  , "onClose" :: Effect (Unit)
  , "onIFrameLoad" :: UndefinedOr (EffectFn1 (SyntheticEvent) (Unit))
  , "onScrolledToBottom" :: UndefinedOr (Effect (Unit))
  , "onTransitionEnd" :: UndefinedOr (Effect (Unit))
  }

modal :: forall r. Coercible r ModalProps => r -> JSX
modal = element modalRC <<< coerce

foreign import modalRC :: ReactComponent ModalProps
