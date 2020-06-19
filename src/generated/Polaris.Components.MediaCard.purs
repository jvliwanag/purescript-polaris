module Polaris.Components.MediaCard
  ( Action
  , action
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , FunctionComponent
  , MediaCardProps
  , mediaCard
  , mediaCardRC
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
type ActionListItemDescriptor =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "active" :: UndefinedOr (Boolean)
  , "badge" :: UndefinedOr ({"content" :: UndefinedOr (String), "status" :: UndefinedOr (StringLit "new")})
  , "content" :: UndefinedOr (String)
  , "destructive" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "ellipsis" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "helpText" :: UndefinedOr (String)
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "id" :: UndefinedOr (String)
  , "image" :: UndefinedOr (String)
  , "role" :: UndefinedOr (String)
  , "target" :: UndefinedOr ((StringLit "ADMIN_PATH") |+| (StringLit "REMOTE") |+| (StringLit "APP"))
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

actionListItemDescriptor :: forall r. Coercible r ActionListItemDescriptor => r -> ActionListItemDescriptor
actionListItemDescriptor = coerce
foreign import data FunctionComponent :: Type

type MediaCardProps =
  { "children" :: JSX
  , "description" :: String
  , "popoverActions" :: UndefinedOr (Array (ActionListItemDescriptor))
  , "portrait" :: UndefinedOr (Boolean)
  , "primaryAction" :: Action
  , "secondaryAction" :: UndefinedOr (Action)
  , "title" :: String
  }

mediaCard :: forall r. Coercible r MediaCardProps => r -> JSX
mediaCard = element mediaCardRC <<< coerce

foreign import mediaCardRC :: ReactComponent MediaCardProps
