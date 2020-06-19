module Polaris.Components.EmptyState
  ( Action
  , action
  , EmptyStateProps
  , emptyState
  , emptyStateRC
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

type EmptyStateProps =
  { "action" :: UndefinedOr (Action)
  , "centeredLayout" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr (JSX)
  , "footerContent" :: UndefinedOr (JSX)
  , "heading" :: UndefinedOr (String)
  , "image" :: String
  , "imageContained" :: UndefinedOr (Boolean)
  , "largeImage" :: UndefinedOr (String)
  , "secondaryAction" :: UndefinedOr (Action)
  }

emptyState :: forall r. Coercible r EmptyStateProps => r -> JSX
emptyState = element emptyStateRC <<< coerce

foreign import emptyStateRC :: ReactComponent EmptyStateProps
