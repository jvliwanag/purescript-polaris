module Polaris.Components.DatePicker
  ( DatePickerProps
  , datePicker
  , datePickerRC
  , Date
  , Months
  , Range
  , Weekdays
  , Year
  ) where

import Prelude
import Effect.Uncurried (EffectFn1, EffectFn2)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type DatePickerProps
  = { allowRange :: UndefinedOr Boolean
    , disableDatesAfter :: UndefinedOr Date
    , disableDatesBefore :: UndefinedOr Date
    , id :: UndefinedOr String
    , month :: Months
    , multiMonth :: UndefinedOr Boolean
    , selected :: UndefinedOr (Date |+| Range)
    , weekStartsOn :: UndefinedOr Weekdays
    , year :: Year
    , onChange :: UndefinedOr (EffectFn1 Range Unit)
    , onMonthChange :: UndefinedOr (EffectFn2 Months Year Unit)
    }

datePicker :: forall r. Castable r DatePickerProps => r -> JSX
datePicker = elem datePickerRC

foreign import datePickerRC :: ReactComponent DatePickerProps

foreign import data Date :: Type

foreign import data Months :: Type

foreign import data Range :: Type

foreign import data Weekdays :: Type

foreign import data Year :: Type
