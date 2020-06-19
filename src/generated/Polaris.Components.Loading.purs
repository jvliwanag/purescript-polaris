module Polaris.Components.Loading
  ( LoadingProps
  , loading
  , loadingRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type LoadingProps =
  { 
  }

loading :: forall r. Coercible r LoadingProps => r -> JSX
loading = element loadingRC <<< coerce

foreign import loadingRC :: ReactComponent LoadingProps
