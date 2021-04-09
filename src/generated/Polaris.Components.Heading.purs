module Polaris.Components.Heading
  (HeadingBaseProps', HeadingBaseProps, HeadingProps, heading, headingRC) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type HeadingBaseProps'
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

type HeadingBaseProps = { | HeadingBaseProps' }

type HeadingProps = PropsWithChildren HeadingBaseProps'

heading :: forall r. Castable r HeadingBaseProps => r -> Array JSX -> JSX
heading = elemWithChildren headingRC

foreign import headingRC :: ReactComponent HeadingProps
