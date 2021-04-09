module Polaris.Components.AccountConnection
  (AccountConnectionProps, accountConnection, accountConnectionRC) where

import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type AccountConnectionProps
  = { accountName :: UndefinedOr String
    , action :: UndefinedOr Action
    , avatarUrl :: UndefinedOr String
    , connected :: UndefinedOr Boolean
    , details :: UndefinedOr JSX
    , termsOfService :: UndefinedOr JSX
    , title :: UndefinedOr JSX
    }

accountConnection :: forall r. Castable r AccountConnectionProps => r -> JSX
accountConnection = elem accountConnectionRC

foreign import accountConnectionRC :: ReactComponent AccountConnectionProps
