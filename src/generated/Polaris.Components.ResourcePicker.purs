module Polaris.Components.ResourcePicker
  (ResourcePickerProps, resourcePicker, resourcePickerRC, SelectPayload) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ResourcePickerProps
  = { allowMultiple :: UndefinedOr Boolean
    , initialQuery :: UndefinedOr String
    , open :: Boolean
    , resourceType
      :: StringLit "Product"
        |+| StringLit "ProductVariant"
        |+| StringLit "Collection"
    , showHidden :: UndefinedOr Boolean
    , showVariants :: UndefinedOr Boolean
    , onCancel :: UndefinedOr (Effect Unit)
    , onSelection :: UndefinedOr (EffectFn1 SelectPayload Unit)
    }

resourcePicker :: forall r. Castable r ResourcePickerProps => r -> JSX
resourcePicker = elem resourcePickerRC

foreign import resourcePickerRC :: ReactComponent ResourcePickerProps

foreign import data SelectPayload :: Type
