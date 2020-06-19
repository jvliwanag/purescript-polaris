module Polaris.Components.ResourceList
  ( ActionListItemDescriptor
  , actionListItemDescriptor
  , ActionListSection
  , actionListSection
  , DisableableAction
  , disableableAction
  , FunctionComponent
  , StrictOption
  , strictOption
  , ResourceListProps
  , resourceList
  , resourceListRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type ActionListItemDescriptor =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "active" :: UndefinedOr (Boolean)
  , "badge" :: UndefinedOr ({"content" :: UndefinedOr (String), "status" :: UndefinedOr (StringLit "new")})
  , "content" :: UndefinedOr (String)
  , "destructive" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "ellipsis" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "helpText" :: UndefinedOr (String)
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "id" :: UndefinedOr (String)
  , "image" :: UndefinedOr (String)
  , "role" :: UndefinedOr (String)
  , "target" :: UndefinedOr ((StringLit "ADMIN_PATH") |+| (StringLit "REMOTE") |+| (StringLit "APP"))
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

actionListItemDescriptor :: forall r. Coercible r ActionListItemDescriptor => r -> ActionListItemDescriptor
actionListItemDescriptor = coerce
type ActionListSection =
  { "items" :: Array (ActionListItemDescriptor)
  , "title" :: UndefinedOr (String)
  }

actionListSection :: forall r. Coercible r ActionListSection => r -> ActionListSection
actionListSection = coerce
type DisableableAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

disableableAction :: forall r. Coercible r DisableableAction => r -> DisableableAction
disableableAction = coerce
foreign import data FunctionComponent :: Type
type StrictOption =
  { "disabled" :: UndefinedOr (Boolean)
  , "label" :: String
  , "value" :: String
  }

strictOption :: forall r. Coercible r StrictOption => r -> StrictOption
strictOption = coerce

type ResourceListProps =
  { "alternateTool" :: UndefinedOr (JSX)
  , "bulkActions" :: UndefinedOr (Array ((DisableableAction) |+| (ActionListSection)))
  , "filterControl" :: UndefinedOr (JSX)
  , "hasMoreItems" :: UndefinedOr (Boolean)
  , "items" :: Array (Foreign)
  , "loading" :: UndefinedOr (Boolean)
  , "promotedBulkActions" :: UndefinedOr (Array (DisableableAction))
  , "resourceName" :: UndefinedOr ({"plural" :: UndefinedOr (String), "singular" :: UndefinedOr (String)})
  , "selectable" :: UndefinedOr (Boolean)
  , "selectedItems" :: UndefinedOr ((Array (String)) |+| (StringLit "All"))
  , "showHeader" :: UndefinedOr (Boolean)
  , "sortOptions" :: UndefinedOr (Array ((String) |+| (StrictOption)))
  , "sortValue" :: UndefinedOr (String)
  , "totalItemsCount" :: UndefinedOr (Number)
  , "idForItem" :: UndefinedOr (EffectFn2 (Foreign) (Number) (String))
  , "onSelectionChange" :: UndefinedOr (EffectFn1 ((Array (String)) |+| (StringLit "All")) (Unit))
  , "onSortChange" :: UndefinedOr (EffectFn2 (String) (String) (Unit))
  , "renderItem" :: EffectFn3 (Foreign) (String) (Number) (JSX)
  , "resolveItemId" :: UndefinedOr (EffectFn1 (Foreign) (String))
  }

resourceList :: forall r. Coercible r ResourceListProps => r -> JSX
resourceList = element resourceListRC <<< coerce

foreign import resourceListRC :: ReactComponent ResourceListProps
