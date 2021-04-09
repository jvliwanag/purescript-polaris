module Polaris.Components.ColorPicker
  (ColorPickerProps, colorPicker, colorPickerRC, Color, color, HsbaColor) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type ColorPickerProps
  = { allowAlpha :: UndefinedOr Boolean
    , color :: Color
    , id :: UndefinedOr String
    , onChange :: EffectFn1 HsbaColor Unit
    }

colorPicker :: forall r. Castable r ColorPickerProps => r -> JSX
colorPicker = elem colorPickerRC

foreign import colorPickerRC :: ReactComponent ColorPickerProps

type Color
  = { alpha :: UndefinedOr Number
    , brightness :: Number
    , hue :: Number
    , saturation :: Number
    }

color :: forall r. Castable r Color => r -> Color
color = cast

foreign import data HsbaColor :: Type
