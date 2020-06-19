module Polaris.Components.ProgressBar
  ( ProgressBarProps
  , progressBar
  , progressBarRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type ProgressBarProps =
  { "progress" :: UndefinedOr (Number)
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large"))
  }

progressBar :: forall r. Coercible r ProgressBarProps => r -> JSX
progressBar = element progressBarRC <<< coerce

foreign import progressBarRC :: ReactComponent ProgressBarProps
