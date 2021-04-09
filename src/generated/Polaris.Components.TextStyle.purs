module Polaris.Components.TextStyle
  ( TextStyleBaseProps'
  , TextStyleBaseProps
  , TextStyleProps
  , textStyle
  , textStyleRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type TextStyleBaseProps'
  = ( variation
      :: UndefinedOr
         ( StringLit "positive"
           |+| StringLit "negative"
           |+| StringLit "strong"
           |+| StringLit "subdued"
           |+| StringLit "code"
         )
    )

type TextStyleBaseProps = { | TextStyleBaseProps' }

type TextStyleProps = PropsWithChildren TextStyleBaseProps'

textStyle :: forall r. Castable r TextStyleBaseProps => r -> Array JSX -> JSX
textStyle = elemWithChildren textStyleRC

foreign import textStyleRC :: ReactComponent TextStyleProps
