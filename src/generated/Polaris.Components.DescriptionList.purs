module Polaris.Components.DescriptionList
  (DescriptionListProps, descriptionList, descriptionListRC, Item, item) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type DescriptionListProps
  = { items :: Array Item
    , spacing :: UndefinedOr (StringLit "tight" |+| StringLit "loose")
    }

descriptionList :: forall r. Castable r DescriptionListProps => r -> JSX
descriptionList = elem descriptionListRC

foreign import descriptionListRC :: ReactComponent DescriptionListProps

type Item = { description :: JSX, term :: JSX }

item :: forall r. Castable r Item => r -> Item
item = cast
