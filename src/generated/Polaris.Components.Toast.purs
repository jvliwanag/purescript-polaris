module Polaris.Components.Toast
  ( Action
  , action
  , ToastProps
  , toast
  , toastRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Action =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

action :: forall r. Coercible r Action => r -> Action
action = coerce

type ToastProps =
  { "action" :: UndefinedOr (Action)
  , "content" :: String
  , "duration" :: UndefinedOr (Number)
  , "error" :: UndefinedOr (Boolean)
  , "onDismiss" :: Effect (Unit)
  }

toast :: forall r. Coercible r ToastProps => r -> JSX
toast = element toastRC <<< coerce

foreign import toastRC :: ReactComponent ToastProps
