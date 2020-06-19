module Polaris.Components.Autocomplete
  ( ActionListItemDescriptor
  , actionListItemDescriptor
  , PArray
  , FunctionComponent
  , ReactElement
  , AutocompleteProps
  , autocomplete
  , autocompleteRC
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
foreign import data PArray :: Type
foreign import data FunctionComponent :: Type
foreign import data ReactElement :: Type

type AutocompleteProps =
  { "actionBefore" :: UndefinedOr (ActionListItemDescriptor)
  , "allowMultiple" :: UndefinedOr (Boolean)
  , "emptyState" :: UndefinedOr (JSX)
  , "id" :: UndefinedOr (String)
  , "listTitle" :: UndefinedOr (String)
  , "loading" :: UndefinedOr (Boolean)
  , "options" :: PArray
  , "preferredPosition" :: UndefinedOr ((StringLit "above") |+| (StringLit "below") |+| (StringLit "mostSpace"))
  , "selected" :: Array (String)
  , "textField" :: ReactElement
  , "willLoadMoreResults" :: UndefinedOr (Boolean)
  , "onLoadMoreResults" :: UndefinedOr (Effect (Unit))
  , "onSelect" :: EffectFn1 (Array (String)) (Unit)
  }

autocomplete :: forall r. Coercible r AutocompleteProps => r -> JSX
autocomplete = element autocompleteRC <<< coerce

foreign import autocompleteRC :: ReactComponent AutocompleteProps
