module Polaris.Components.ResourceList
  ( ResourceListProps
  , resourceList
  , resourceListRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , ActionListSection
  , actionListSection
  , DisableableAction
  , disableableAction
  , FunctionComponent
  , StrictOption
  , strictOption
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2, EffectFn3)
import Foreign (Foreign)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ResourceListProps
  = { alternateTool :: UndefinedOr JSX
    , bulkActions
      :: UndefinedOr
         (Array (DisableableAction |+| ActionListSection))
    , filterControl :: UndefinedOr JSX
    , hasMoreItems :: UndefinedOr Boolean
    , items :: Array Foreign
    , loading :: UndefinedOr Boolean
    , promotedBulkActions :: UndefinedOr (Array DisableableAction)
    , resourceName
      :: UndefinedOr
         { plural :: UndefinedOr String, singular :: UndefinedOr String }
    , selectable :: UndefinedOr Boolean
    , selectedItems :: UndefinedOr (Array String |+| StringLit "All")
    , showHeader :: UndefinedOr Boolean
    , sortOptions :: UndefinedOr (Array (String |+| StrictOption))
    , sortValue :: UndefinedOr String
    , totalItemsCount :: UndefinedOr Number
    , idForItem :: UndefinedOr (EffectFn2 Foreign Number String)
    , onSelectionChange
      :: UndefinedOr
         (EffectFn1 (Array String |+| StringLit "All") Unit)
    , onSortChange :: UndefinedOr (EffectFn2 String String Unit)
    , renderItem :: EffectFn3 Foreign String Number JSX
    , resolveItemId :: UndefinedOr (EffectFn1 Foreign String)
    }

resourceList :: forall r. Castable r ResourceListProps => r -> JSX
resourceList = elem resourceListRC

foreign import resourceListRC :: ReactComponent ResourceListProps

type ActionListItemDescriptor
  = { accessibilityLabel :: UndefinedOr String
    , active :: UndefinedOr Boolean
    , badge
      :: UndefinedOr
         { content :: UndefinedOr String
         , status :: UndefinedOr (StringLit "new")
         }
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , ellipsis :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , helpText :: UndefinedOr String
    , icon :: UndefinedOr (String |+| FunctionComponent)
    , id :: UndefinedOr String
    , image :: UndefinedOr String
    , role :: UndefinedOr String
    , target
      :: UndefinedOr
         (StringLit "ADMIN_PATH" |+| StringLit "REMOTE" |+| StringLit "APP")
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

actionListItemDescriptor
  :: forall r
   . Castable
  r
  ActionListItemDescriptor
  => r
  -> ActionListItemDescriptor
actionListItemDescriptor = cast

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

type DisableableAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

disableableAction
  :: forall r
   . Castable
  r
  DisableableAction
  => r
  -> DisableableAction
disableableAction = cast

foreign import data FunctionComponent :: Type

type StrictOption
  = { disabled :: UndefinedOr Boolean, label :: String, value :: String }

strictOption :: forall r. Castable r StrictOption => r -> StrictOption
strictOption = cast
