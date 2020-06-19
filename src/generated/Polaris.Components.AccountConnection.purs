module Polaris.Components.AccountConnection
  ( Action
  , action
  , AccountConnectionProps
  , accountConnection
  , accountConnectionRC
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

type AccountConnectionProps =
  { "accountName" :: UndefinedOr (String)
  , "action" :: UndefinedOr (Action)
  , "avatarUrl" :: UndefinedOr (String)
  , "connected" :: UndefinedOr (Boolean)
  , "details" :: UndefinedOr (JSX)
  , "termsOfService" :: UndefinedOr (JSX)
  , "title" :: UndefinedOr (JSX)
  }

accountConnection :: forall r. Coercible r AccountConnectionProps => r -> JSX
accountConnection = element accountConnectionRC <<< coerce

foreign import accountConnectionRC :: ReactComponent AccountConnectionProps
