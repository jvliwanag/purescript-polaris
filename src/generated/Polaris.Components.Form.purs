module Polaris.Components.Form
  (FormBaseProps', FormBaseProps, FormProps, form, formRC, FormEvent) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type FormBaseProps'
  = ( acceptCharset :: UndefinedOr String
    , action :: UndefinedOr String
    , autoComplete :: UndefinedOr Boolean
    , encType
      :: UndefinedOr
         ( StringLit "application/x-www-form-urlencoded"
           |+| StringLit "multipart/form-data"
           |+| StringLit "text/plain"
         )
    , implicitSubmit :: UndefinedOr Boolean
    , method
      :: UndefinedOr
         (StringLit "post" |+| StringLit "get" |+| StringLit "action")
    , name :: UndefinedOr String
    , noValidate :: UndefinedOr Boolean
    , preventDefault :: UndefinedOr Boolean
    , target
      :: UndefinedOr
         ( StringLit "_blank"
           |+| StringLit "_self"
           |+| StringLit "_parent"
           |+| StringLit "_top"
           |+| String
         )
    , onSubmit :: EffectFn1 FormEvent Unit
    )

type FormBaseProps = { | FormBaseProps' }

type FormProps = PropsWithChildren FormBaseProps'

form :: forall r. Castable r FormBaseProps => r -> Array JSX -> JSX
form = elemWithChildren formRC

foreign import formRC :: ReactComponent FormProps

foreign import data FormEvent :: Type
