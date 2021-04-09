module Polaris.Components.RangeSlider
  (RangeSliderProps, rangeSlider, rangeSliderRC, DualValue) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn2)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type RangeSliderProps
  = { disabled :: UndefinedOr Boolean
    , error :: UndefinedOr (String |+| JSX |+| Array (String |+| JSX))
    , helpText :: UndefinedOr JSX
    , id :: UndefinedOr String
    , label :: String
    , labelAction :: UndefinedOr Action
    , labelHidden :: UndefinedOr Boolean
    , max :: UndefinedOr Number
    , min :: UndefinedOr Number
    , output :: UndefinedOr Boolean
    , prefix :: UndefinedOr JSX
    , step :: UndefinedOr Number
    , suffix :: UndefinedOr JSX
    , value :: Number |+| DualValue
    , onBlur :: UndefinedOr (Effect Unit)
    , onChange :: EffectFn2 (Number |+| DualValue) String Unit
    , onFocus :: UndefinedOr (Effect Unit)
    }

rangeSlider :: forall r. Castable r RangeSliderProps => r -> JSX
rangeSlider = elem rangeSliderRC

foreign import rangeSliderRC :: ReactComponent RangeSliderProps

foreign import data DualValue :: Type
