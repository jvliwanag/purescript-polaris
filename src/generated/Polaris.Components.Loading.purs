module Polaris.Components.Loading(LoadingProps, loading, loadingRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type LoadingProps = {}

loading :: forall r. Castable r LoadingProps => r -> JSX
loading = elem loadingRC

foreign import loadingRC :: ReactComponent LoadingProps
