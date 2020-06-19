module Polaris.Components.InlineError
  ( ReactElement
  , InlineErrorProps
  , inlineError
  , inlineErrorRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data ReactElement :: Type

type InlineErrorProps =
  { "fieldID" :: String
  , "message" :: (String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement)))
  }

inlineError :: forall r. Coercible r InlineErrorProps => r -> JSX
inlineError = element inlineErrorRC <<< coerce

foreign import inlineErrorRC :: ReactComponent InlineErrorProps
