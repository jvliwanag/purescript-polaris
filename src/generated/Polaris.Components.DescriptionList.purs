module Polaris.Components.DescriptionList
  ( Item
  , item
  , DescriptionListProps
  , descriptionList
  , descriptionListRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Item =
  { "description" :: JSX
  , "term" :: JSX
  }

item :: forall r. Coercible r Item => r -> Item
item = coerce

type DescriptionListProps =
  { "items" :: Array (Item)
  }

descriptionList :: forall r. Coercible r DescriptionListProps => r -> JSX
descriptionList = element descriptionListRC <<< coerce

foreign import descriptionListRC :: ReactComponent DescriptionListProps
