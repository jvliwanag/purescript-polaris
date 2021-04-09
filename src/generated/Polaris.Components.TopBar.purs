module Polaris.Components.TopBar(TopBarProps, topBar, topBarRC, OnDismiss) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type TopBarProps
  = { contextControl :: UndefinedOr JSX
    , onSearchResultsDismiss :: UndefinedOr OnDismiss
    , searchField :: UndefinedOr JSX
    , searchResults :: UndefinedOr JSX
    , searchResultsOverlayVisible :: UndefinedOr Boolean
    , searchResultsVisible :: UndefinedOr Boolean
    , secondaryMenu :: UndefinedOr JSX
    , showNavigationToggle :: UndefinedOr Boolean
    , userMenu :: UndefinedOr JSX
    , onNavigationToggle :: UndefinedOr (Effect Unit)
    }

topBar :: forall r. Castable r TopBarProps => r -> JSX
topBar = elem topBarRC

foreign import topBarRC :: ReactComponent TopBarProps

foreign import data OnDismiss :: Type
