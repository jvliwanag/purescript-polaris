module Polaris.Components.Collapsible
  ( CollapsibleBaseProps'
  , CollapsibleBaseProps
  , CollapsibleProps
  , collapsible
  , collapsibleRC
  , Transition
  , transition
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type CollapsibleBaseProps'
  = ( id :: String, open :: Boolean, transition :: UndefinedOr Transition )

type CollapsibleBaseProps = { | CollapsibleBaseProps' }

type CollapsibleProps = PropsWithChildren CollapsibleBaseProps'

collapsible
  :: forall r
   . Castable
  r
  CollapsibleBaseProps
  => r
  -> Array JSX
  -> JSX
collapsible = elemWithChildren collapsibleRC

foreign import collapsibleRC :: ReactComponent CollapsibleProps

type Transition
  = { duration :: UndefinedOr String, timingFunction :: UndefinedOr String }

transition :: forall r. Castable r Transition => r -> Transition
transition = cast
