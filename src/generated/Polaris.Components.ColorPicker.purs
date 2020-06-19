module Polaris.Components.ColorPicker
  ( Color
  , color
  , HsbaColor
  , ColorPickerProps
  , colorPicker
  , colorPickerRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Color =
  { "alpha" :: UndefinedOr (Number)
  , "brightness" :: Number
  , "hue" :: Number
  , "saturation" :: Number
  }

color :: forall r. Coercible r Color => r -> Color
color = coerce
foreign import data HsbaColor :: Type

type ColorPickerProps =
  { "allowAlpha" :: UndefinedOr (Boolean)
  , "color" :: Color
  , "id" :: UndefinedOr (String)
  , "onChange" :: EffectFn1 (HsbaColor) (Unit)
  }

colorPicker :: forall r. Coercible r ColorPickerProps => r -> JSX
colorPicker = element colorPickerRC <<< coerce

foreign import colorPickerRC :: ReactComponent ColorPickerProps
