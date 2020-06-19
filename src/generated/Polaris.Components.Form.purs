module Polaris.Components.Form
  ( FormEvent
  , FormProps
  , form
  , formRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data FormEvent :: Type

type FormProps =
  { "acceptCharset" :: UndefinedOr (String)
  , "action" :: UndefinedOr (String)
  , "autoComplete" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr (JSX)
  , "encType" :: UndefinedOr ((StringLit "application/x-www-form-urlencoded") |+| (StringLit "multipart/form-data") |+| (StringLit "text/plain"))
  , "implicitSubmit" :: UndefinedOr (Boolean)
  , "method" :: UndefinedOr ((StringLit "post") |+| (StringLit "get") |+| (StringLit "action"))
  , "name" :: UndefinedOr (String)
  , "noValidate" :: UndefinedOr (Boolean)
  , "preventDefault" :: UndefinedOr (Boolean)
  , "target" :: UndefinedOr ((StringLit "_blank") |+| (StringLit "_self") |+| (StringLit "_parent") |+| (StringLit "_top") |+| (String))
  , "onSubmit" :: EffectFn1 (FormEvent) (Unit)
  }

form :: forall r. Coercible r FormProps => r -> JSX
form = element formRC <<< coerce

foreign import formRC :: ReactComponent FormProps
