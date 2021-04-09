module Polaris.Components.RadioButton
  (RadioButtonProps, radioButton, radioButtonRC) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn2)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type RadioButtonProps
  = { ariaDescribedBy :: UndefinedOr String
    , checked :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
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

radioButton :: forall r. Castable r RadioButtonProps => r -> JSX
radioButton = elem radioButtonRC

foreign import radioButtonRC :: ReactComponent RadioButtonProps
