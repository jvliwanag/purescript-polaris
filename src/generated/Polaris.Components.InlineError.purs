module Polaris.Components.InlineError
  (InlineErrorProps, inlineError, inlineErrorRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (type (|+|))

type InlineErrorProps
  = { fieldID :: String, message :: String |+| JSX |+| Array (String |+| JSX) }

inlineError :: forall r. Castable r InlineErrorProps => r -> JSX
inlineError = elem inlineErrorRC

foreign import inlineErrorRC :: ReactComponent InlineErrorProps
