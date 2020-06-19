module Polaris.Components.CalloutCard
  ( Action
  , action
  , CalloutCardProps
  , calloutCard
  , calloutCardRC
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

type CalloutCardProps =
  { "children" :: UndefinedOr (JSX)
  , "illustration" :: String
  , "primaryAction" :: Action
  , "secondaryAction" :: UndefinedOr (Action)
  , "title" :: String
  , "onDismiss" :: UndefinedOr (Effect (Unit))
  }

calloutCard :: forall r. Coercible r CalloutCardProps => r -> JSX
calloutCard = element calloutCardRC <<< coerce

foreign import calloutCardRC :: ReactComponent CalloutCardProps
