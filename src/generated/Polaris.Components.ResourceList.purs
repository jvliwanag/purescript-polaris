module Polaris.Components.ResourceList
  ( ResourceListProps
  , resourceList
  , resourceListRC
  , ActionListItemDescriptor
  , ActionListSection
  , actionListSection
  , DisableableActionBadgeAction
  , ItemType
  , StrictOption
  , strictOption
  ) where

import Prelude
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ResourceListProps
  = { alternateTool :: UndefinedOr JSX
    , bulkActions
      :: UndefinedOr
         (Array (ActionListSection |+| DisableableActionBadgeAction))
    , emptySearchState :: UndefinedOr JSX
    , emptyState :: UndefinedOr JSX
    , filterControl :: UndefinedOr JSX
    , hasMoreItems :: UndefinedOr Boolean
    , isFiltered :: UndefinedOr Boolean
    , items :: Array ItemType
    , loading :: UndefinedOr Boolean
    , promotedBulkActions :: UndefinedOr (Array DisableableActionBadgeAction)
    , resourceName
      :: UndefinedOr
         { plural :: UndefinedOr String, singular :: UndefinedOr String }
    , selectable :: UndefinedOr Boolean
    , selectedItems :: UndefinedOr (Array String |+| StringLit "All")
    , showHeader :: UndefinedOr Boolean
    , sortOptions :: UndefinedOr (Array (String |+| StrictOption))
    , sortValue :: UndefinedOr String
    , totalItemsCount :: UndefinedOr Number
    , idForItem :: UndefinedOr (EffectFn2 ItemType Number String)
    , onSelectionChange
      :: UndefinedOr
         (EffectFn1 (Array String |+| StringLit "All") Unit)
    , onSortChange :: UndefinedOr (EffectFn2 String String Unit)
    , renderItem :: EffectFn3 ItemType String Number JSX
    , resolveItemId :: UndefinedOr (EffectFn1 ItemType String)
    }

resourceList :: forall r. Castable r ResourceListProps => r -> JSX
resourceList = elem resourceListRC

foreign import resourceListRC :: ReactComponent ResourceListProps

foreign import data ActionListItemDescriptor :: Type

type ActionListSection
  = { items :: Array ActionListItemDescriptor, title :: UndefinedOr String }

actionListSection
  :: forall r
   . Castable
  r
  ActionListSection
  => r
  -> ActionListSection
actionListSection = cast

foreign import data DisableableActionBadgeAction :: Type

foreign import data ItemType :: Type

type StrictOption
  = { disabled :: UndefinedOr Boolean
    , label :: String
    , prefix :: UndefinedOr JSX
    , value :: String
    }

strictOption :: forall r. Castable r StrictOption => r -> StrictOption
strictOption = cast
