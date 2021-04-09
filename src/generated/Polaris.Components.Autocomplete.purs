module Polaris.Components.Autocomplete
  ( AutocompleteProps
  , autocomplete
  , autocompleteRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , PArray
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type AutocompleteProps
  = { actionBefore :: UndefinedOr ActionListItemDescriptor
    , allowMultiple :: UndefinedOr Boolean
    , emptyState :: UndefinedOr JSX
    , id :: UndefinedOr String
    , listTitle :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , options :: PArray
    , preferredPosition
      :: UndefinedOr
         (StringLit "above" |+| StringLit "below" |+| StringLit "mostSpace")
    , selected :: Array String
    , textField :: JSX
    , willLoadMoreResults :: UndefinedOr Boolean
    , onLoadMoreResults :: UndefinedOr (Effect Unit)
    , onSelect :: EffectFn1 (Array String) Unit
    }

autocomplete :: forall r. Castable r AutocompleteProps => r -> JSX
autocomplete = elem autocompleteRC

foreign import autocompleteRC :: ReactComponent AutocompleteProps

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

foreign import data PArray :: Type

foreign import data FunctionComponent :: Type
