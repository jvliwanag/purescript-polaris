module Polaris.Components.Subheading
  ( SubheadingBaseProps'
  , SubheadingBaseProps
  , SubheadingProps
  , subheading
  , subheadingRC
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type SubheadingBaseProps'
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
    )

type SubheadingBaseProps = { | SubheadingBaseProps' }

type SubheadingProps = PropsWithChildren SubheadingBaseProps'

subheading :: forall r. Castable r SubheadingBaseProps => r -> Array JSX -> JSX
subheading = elemWithChildren subheadingRC

foreign import subheadingRC :: ReactComponent SubheadingProps
