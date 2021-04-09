module Polaris.Components.Frame
  (FrameBaseProps', FrameBaseProps, FrameProps, frame, frameRC, ReactRefObject) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type FrameBaseProps'
  = ( globalRibbon :: UndefinedOr JSX
    , navigation :: UndefinedOr JSX
    , showMobileNavigation :: UndefinedOr Boolean
    , skipToContentTarget :: UndefinedOr ReactRefObject
    , topBar :: UndefinedOr JSX
    , onNavigationDismiss :: UndefinedOr (Effect Unit)
    )

type FrameBaseProps = { | FrameBaseProps' }

type FrameProps = PropsWithChildren FrameBaseProps'

frame :: forall r. Castable r FrameBaseProps => r -> Array JSX -> JSX
frame = elemWithChildren frameRC

foreign import frameRC :: ReactComponent FrameProps

foreign import data ReactRefObject :: Type
