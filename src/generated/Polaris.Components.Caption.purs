module Polaris.Components.Caption
  (CaptionBaseProps', CaptionBaseProps, CaptionProps, caption, captionRC) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type CaptionBaseProps' = ()

type CaptionBaseProps = { | CaptionBaseProps' }

type CaptionProps = PropsWithChildren CaptionBaseProps'

caption :: forall r. Castable r CaptionBaseProps => r -> Array JSX -> JSX
caption = elemWithChildren captionRC

foreign import captionRC :: ReactComponent CaptionProps
