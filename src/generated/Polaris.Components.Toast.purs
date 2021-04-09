module Polaris.Components.Toast(ToastProps, toast, toastRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type ToastProps
  = { action :: UndefinedOr Action
    , content :: String
    , duration :: UndefinedOr Number
    , error :: UndefinedOr Boolean
    , onDismiss :: Effect Unit
    }

toast :: forall r. Castable r ToastProps => r -> JSX
toast = elem toastRC

foreign import toastRC :: ReactComponent ToastProps
