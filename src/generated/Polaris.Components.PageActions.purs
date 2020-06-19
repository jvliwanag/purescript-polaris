module Polaris.Components.PageActions
  ( ComplexAction
  , complexAction
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  , PageActionsProps
  , pageActions
  , pageActionsRC
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
type DisableableActionLoadableAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  , "loading" :: UndefinedOr (Boolean)
  }

disableableActionLoadableAction :: forall r. Coercible r DisableableActionLoadableAction => r -> DisableableActionLoadableAction
disableableActionLoadableAction = coerce
foreign import data FunctionComponent :: Type

type PageActionsProps =
  { "primaryAction" :: UndefinedOr (DisableableActionLoadableAction)
  , "secondaryActions" :: UndefinedOr (Array (ComplexAction))
  }

pageActions :: forall r. Coercible r PageActionsProps => r -> JSX
pageActions = element pageActionsRC <<< coerce

foreign import pageActionsRC :: ReactComponent PageActionsProps
