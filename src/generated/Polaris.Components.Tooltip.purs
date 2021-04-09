module Polaris.Components.Tooltip
  (TooltipBaseProps', TooltipBaseProps, TooltipProps, tooltip, tooltipRC) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type TooltipBaseProps'
  = ( activatorWrapper :: UndefinedOr String
    , active :: UndefinedOr Boolean
    , content :: String
    , light :: UndefinedOr Boolean
    , preferredPosition
      :: UndefinedOr
         (StringLit "above" |+| StringLit "below" |+| StringLit "mostSpace")
    )

type TooltipBaseProps = { | TooltipBaseProps' }

type TooltipProps = PropsWithChildren TooltipBaseProps'

tooltip :: forall r. Castable r TooltipBaseProps => r -> Array JSX -> JSX
tooltip = elemWithChildren tooltipRC

foreign import tooltipRC :: ReactComponent TooltipProps
