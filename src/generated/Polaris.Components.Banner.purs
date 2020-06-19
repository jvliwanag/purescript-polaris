module Polaris.Components.Banner
  ( Action
  , action
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  , BannerProps
  , banner
  , bannerRC
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

type BannerProps =
  { "action" :: UndefinedOr (DisableableActionLoadableAction)
  , "children" :: UndefinedOr (JSX)
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "secondaryAction" :: UndefinedOr (Action)
  , "status" :: UndefinedOr ((StringLit "success") |+| (StringLit "info") |+| (StringLit "warning") |+| (StringLit "critical"))
  , "stopAnnouncements" :: UndefinedOr (Boolean)
  , "title" :: UndefinedOr (String)
  , "onDismiss" :: UndefinedOr (Effect (Unit))
  }

banner :: forall r. Coercible r BannerProps => r -> JSX
banner = element bannerRC <<< coerce

foreign import bannerRC :: ReactComponent BannerProps
