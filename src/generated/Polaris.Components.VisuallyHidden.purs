module Polaris.Components.VisuallyHidden
  ( VisuallyHiddenBaseProps'
  , VisuallyHiddenBaseProps
  , VisuallyHiddenProps
  , visuallyHidden
  , visuallyHiddenRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type VisuallyHiddenBaseProps' = ()

type VisuallyHiddenBaseProps = { | VisuallyHiddenBaseProps' }

type VisuallyHiddenProps = PropsWithChildren VisuallyHiddenBaseProps'

visuallyHidden
  :: forall r
   . Castable
  r
  VisuallyHiddenBaseProps
  => r
  -> Array JSX
  -> JSX
visuallyHidden = elemWithChildren visuallyHiddenRC

foreign import visuallyHiddenRC :: ReactComponent VisuallyHiddenProps
