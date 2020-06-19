module Polaris.Components.Tooltip
  ( TooltipProps
  , tooltip
  , tooltipRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type TooltipProps =
  { "activatorWrapper" :: UndefinedOr (String)
  , "active" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr (JSX)
  , "content" :: String
  , "light" :: UndefinedOr (Boolean)
  , "preferredPosition" :: UndefinedOr ((StringLit "above") |+| (StringLit "below") |+| (StringLit "mostSpace"))
  }

tooltip :: forall r. Coercible r TooltipProps => r -> JSX
tooltip = element tooltipRC <<< coerce

foreign import tooltipRC :: ReactComponent TooltipProps
