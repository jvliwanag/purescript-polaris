module Polaris.Components.ResourcePicker
  ( SelectPayload
  , ResourcePickerProps
  , resourcePicker
  , resourcePickerRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data SelectPayload :: Type

type ResourcePickerProps =
  { "allowMultiple" :: UndefinedOr (Boolean)
  , "initialQuery" :: UndefinedOr (String)
  , "open" :: Boolean
  , "resourceType" :: (StringLit "Product") |+| (StringLit "ProductVariant") |+| (StringLit "Collection")
  , "showHidden" :: UndefinedOr (Boolean)
  , "showVariants" :: UndefinedOr (Boolean)
  , "onCancel" :: UndefinedOr (Effect (Unit))
  , "onSelection" :: UndefinedOr (EffectFn1 (SelectPayload) (Unit))
  }

resourcePicker :: forall r. Coercible r ResourcePickerProps => r -> JSX
resourcePicker = element resourcePickerRC <<< coerce

foreign import resourcePickerRC :: ReactComponent ResourcePickerProps
