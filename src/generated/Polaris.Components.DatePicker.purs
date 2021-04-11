module Polaris.Components.DatePicker
  (DatePickerProps, datePicker, datePickerRC, Date, Range, range) where

import Prelude
import Effect.Uncurried (EffectFn1, EffectFn2)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type DatePickerProps
  = { allowRange :: UndefinedOr Boolean
    , dayAccessibilityLabelPrefix :: UndefinedOr String
    , disableDatesAfter :: UndefinedOr Date
    , disableDatesBefore :: UndefinedOr Date
    , id :: UndefinedOr String
    , month :: Number
    , multiMonth :: UndefinedOr Boolean
    , selected :: UndefinedOr (Date |+| Range)
    , weekStartsOn :: UndefinedOr Number
    , year :: Number
    , onChange :: UndefinedOr (EffectFn1 Range Unit)
    , onMonthChange :: UndefinedOr (EffectFn2 Number Number Unit)
    }

datePicker :: forall r. Castable r DatePickerProps => r -> JSX
datePicker = elem datePickerRC

foreign import datePickerRC :: ReactComponent DatePickerProps

foreign import data Date :: Type

type Range = { end :: Date, start :: Date }

range :: forall r. Castable r Range => r -> Range
range = cast
