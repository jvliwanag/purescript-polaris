module Polaris.Components.DescriptionList
  (DescriptionListProps, descriptionList, descriptionListRC, Item, item) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)

type DescriptionListProps = { items :: Array Item }

descriptionList :: forall r. Castable r DescriptionListProps => r -> JSX
descriptionList = elem descriptionListRC

foreign import descriptionListRC :: ReactComponent DescriptionListProps

type Item = { description :: JSX, term :: JSX }

item :: forall r. Castable r Item => r -> Item
item = cast
