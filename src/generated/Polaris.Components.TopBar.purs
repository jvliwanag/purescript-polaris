module Polaris.Components.TopBar
  ( OnDismiss
  , TopBarProps
  , topBar
  , topBarRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data OnDismiss :: Type

type TopBarProps =
  { "contextControl" :: UndefinedOr (JSX)
  , "onSearchResultsDismiss" :: UndefinedOr (OnDismiss)
  , "searchField" :: UndefinedOr (JSX)
  , "searchResults" :: UndefinedOr (JSX)
  , "searchResultsOverlayVisible" :: UndefinedOr (Boolean)
  , "searchResultsVisible" :: UndefinedOr (Boolean)
  , "secondaryMenu" :: UndefinedOr (JSX)
  , "showNavigationToggle" :: UndefinedOr (Boolean)
  , "userMenu" :: UndefinedOr (JSX)
  , "onNavigationToggle" :: UndefinedOr (Effect (Unit))
  }

topBar :: forall r. Coercible r TopBarProps => r -> JSX
topBar = element topBarRC <<< coerce

foreign import topBarRC :: ReactComponent TopBarProps
