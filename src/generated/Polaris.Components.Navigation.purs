module Polaris.Components.Navigation
  ( NavigationBaseProps'
  , NavigationBaseProps
  , NavigationProps
  , navigation
  , navigationRC
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type NavigationBaseProps'
  = ( contextControl :: UndefinedOr JSX
    , location :: String
    , onDismiss :: UndefinedOr (Effect Unit)
    )

type NavigationBaseProps = { | NavigationBaseProps' }

type NavigationProps = PropsWithChildren NavigationBaseProps'

navigation :: forall r. Castable r NavigationBaseProps => r -> Array JSX -> JSX
navigation = elemWithChildren navigationRC

foreign import navigationRC :: ReactComponent NavigationProps
