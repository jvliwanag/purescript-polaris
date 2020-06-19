module Polaris.Components.RangeSlider
  ( Action
  , DualValue
  , ReactElement
  , RangeSliderProps
  , rangeSlider
  , rangeSliderRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data Action :: Type
foreign import data DualValue :: Type
foreign import data ReactElement :: Type

type RangeSliderProps =
  { "disabled" :: UndefinedOr (Boolean)
  , "error" :: UndefinedOr ((String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement))))
  , "helpText" :: UndefinedOr (JSX)
  , "id" :: UndefinedOr (String)
  , "label" :: String
  , "labelAction" :: UndefinedOr (Action)
  , "labelHidden" :: UndefinedOr (Boolean)
  , "max" :: UndefinedOr (Number)
  , "min" :: UndefinedOr (Number)
  , "output" :: UndefinedOr (Boolean)
  , "prefix" :: UndefinedOr (JSX)
  , "step" :: UndefinedOr (Number)
  , "suffix" :: UndefinedOr (JSX)
  , "value" :: (Number) |+| (DualValue)
  , "onBlur" :: UndefinedOr (Effect (Unit))
  , "onChange" :: EffectFn2 ((Number) |+| (DualValue)) (String) (Unit)
  , "onFocus" :: UndefinedOr (Effect (Unit))
  }

rangeSlider :: forall r. Coercible r RangeSliderProps => r -> JSX
rangeSlider = element rangeSliderRC <<< coerce

foreign import rangeSliderRC :: ReactComponent RangeSliderProps
