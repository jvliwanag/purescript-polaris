module Polaris.Components.Checkbox(CheckboxProps, checkbox, checkboxRC) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn2)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type CheckboxProps
  = { ariaDescribedBy :: UndefinedOr String
    , checked :: UndefinedOr (Boolean |+| StringLit "indeterminate")
    , disabled :: UndefinedOr Boolean
    , error
      :: UndefinedOr
         (String |+| JSX |+| Array (String |+| JSX) |+| Boolean)
    , helpText :: UndefinedOr JSX
    , id :: UndefinedOr String
    , label :: JSX
    , labelHidden :: UndefinedOr Boolean
    , name :: UndefinedOr String
    , value :: UndefinedOr String
    , onBlur :: UndefinedOr (Effect Unit)
    , onChange :: UndefinedOr (EffectFn2 Boolean String Unit)
    , onFocus :: UndefinedOr (Effect Unit)
    }

checkbox :: forall r. Castable r CheckboxProps => r -> JSX
checkbox = elem checkboxRC

foreign import checkboxRC :: ReactComponent CheckboxProps
