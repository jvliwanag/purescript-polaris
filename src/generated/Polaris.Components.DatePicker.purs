module Polaris.Components.DatePicker
  ( Date
  , Months
  , Range
  , Weekdays
  , Year
  , DatePickerProps
  , datePicker
  , datePickerRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data Date :: Type
foreign import data Months :: Type
foreign import data Range :: Type
foreign import data Weekdays :: Type
foreign import data Year :: Type

type DatePickerProps =
  { "allowRange" :: UndefinedOr (Boolean)
  , "disableDatesAfter" :: UndefinedOr (Date)
  , "disableDatesBefore" :: UndefinedOr (Date)
  , "id" :: UndefinedOr (String)
  , "month" :: Months
  , "multiMonth" :: UndefinedOr (Boolean)
  , "selected" :: UndefinedOr ((Date) |+| (Range))
  , "weekStartsOn" :: UndefinedOr (Weekdays)
  , "year" :: Year
  , "onChange" :: UndefinedOr (EffectFn1 (Range) (Unit))
  , "onMonthChange" :: UndefinedOr (EffectFn2 (Months) (Year) (Unit))
  }

datePicker :: forall r. Coercible r DatePickerProps => r -> JSX
datePicker = element datePickerRC <<< coerce

foreign import datePickerRC :: ReactComponent DatePickerProps
