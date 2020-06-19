module Polaris.Components.Frame
  ( ReactRefObject
  , FrameProps
  , frame
  , frameRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data ReactRefObject :: Type

type FrameProps =
  { "children" :: UndefinedOr (JSX)
  , "globalRibbon" :: UndefinedOr (JSX)
  , "navigation" :: UndefinedOr (JSX)
  , "showMobileNavigation" :: UndefinedOr (Boolean)
  , "skipToContentTarget" :: UndefinedOr (ReactRefObject)
  , "topBar" :: UndefinedOr (JSX)
  , "onNavigationDismiss" :: UndefinedOr (Effect (Unit))
  }

frame :: forall r. Coercible r FrameProps => r -> JSX
frame = element frameRC <<< coerce

foreign import frameRC :: ReactComponent FrameProps
