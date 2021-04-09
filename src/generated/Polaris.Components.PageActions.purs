module Polaris.Components.PageActions
  ( PageActionsProps
  , pageActions
  , pageActionsRC
  , ComplexAction
  , complexAction
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type PageActionsProps
  = { primaryAction :: UndefinedOr DisableableActionLoadableAction
    , secondaryActions :: UndefinedOr (Array ComplexAction)
    }

pageActions :: forall r. Castable r PageActionsProps => r -> JSX
pageActions = elem pageActionsRC

foreign import pageActionsRC :: ReactComponent PageActionsProps

type ComplexAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , icon :: UndefinedOr (String |+| FunctionComponent)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , target
      :: UndefinedOr
         (StringLit "ADMIN_PATH" |+| StringLit "REMOTE" |+| StringLit "APP")
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

complexAction :: forall r. Castable r ComplexAction => r -> ComplexAction
complexAction = cast

type DisableableActionLoadableAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    , loading :: UndefinedOr Boolean
    }

disableableActionLoadableAction
  :: forall r
   . Castable
  r
  DisableableActionLoadableAction
  => r
  -> DisableableActionLoadableAction
disableableActionLoadableAction = cast

foreign import data FunctionComponent :: Type
