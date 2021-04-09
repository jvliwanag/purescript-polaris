module Polaris.Components.DisplayText
  ( DisplayTextBaseProps'
  , DisplayTextBaseProps
  , DisplayTextProps
  , displayText
  , displayTextRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type DisplayTextBaseProps'
  = ( element
      :: UndefinedOr
         ( StringLit "h1"
           |+| StringLit "h2"
           |+| StringLit "h3"
           |+| StringLit "h4"
           |+| StringLit "h5"
           |+| StringLit "h6"
           |+| StringLit "p"
         )
    , size
      :: UndefinedOr
         ( StringLit "small"
           |+| StringLit "medium"
           |+| StringLit "large"
           |+| StringLit "extraLarge"
         )
    )

type DisplayTextBaseProps = { | DisplayTextBaseProps' }

type DisplayTextProps = PropsWithChildren DisplayTextBaseProps'

displayText
  :: forall r
   . Castable
  r
  DisplayTextBaseProps
  => r
  -> Array JSX
  -> JSX
displayText = elemWithChildren displayTextRC

foreign import displayTextRC :: ReactComponent DisplayTextProps
