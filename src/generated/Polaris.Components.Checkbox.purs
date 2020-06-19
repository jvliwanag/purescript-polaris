module Polaris.Components.Checkbox
  ( ReactElement
  , CheckboxProps
  , checkbox
  , checkboxRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data ReactElement :: Type

type CheckboxProps =
  { "ariaDescribedBy" :: UndefinedOr (String)
  , "checked" :: UndefinedOr ((Boolean) |+| (StringLit "indeterminate"))
  , "disabled" :: UndefinedOr (Boolean)
  , "error" :: UndefinedOr ((String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement))) |+| (Boolean))
  , "helpText" :: UndefinedOr (JSX)
  , "id" :: UndefinedOr (String)
  , "label" :: JSX
  , "labelHidden" :: UndefinedOr (Boolean)
  , "name" :: UndefinedOr (String)
  , "value" :: UndefinedOr (String)
  , "onBlur" :: UndefinedOr (Effect (Unit))
  , "onChange" :: UndefinedOr (EffectFn2 (Boolean) (String) (Unit))
  , "onFocus" :: UndefinedOr (Effect (Unit))
  }

checkbox :: forall r. Coercible r CheckboxProps => r -> JSX
checkbox = element checkboxRC <<< coerce

foreign import checkboxRC :: ReactComponent CheckboxProps
