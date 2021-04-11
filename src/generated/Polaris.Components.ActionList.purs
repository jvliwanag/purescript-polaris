module Polaris.Components.ActionList
  ( ActionListProps
  , actionList
  , actionListRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , ActionListSection
  , actionListSection
  , ReactSfc
  , OnAction
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ActionListProps
  = { actionRole :: UndefinedOr String
    , items :: UndefinedOr (Array ActionListItemDescriptor)
    , onActionAnyItem :: UndefinedOr OnAction
    , sections :: UndefinedOr (Array ActionListSection)
    }

actionList :: forall r. Castable r ActionListProps => r -> JSX
actionList = elem actionListRC

foreign import actionListRC :: ReactComponent ActionListProps

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
    , icon :: UndefinedOr (ReactSfc |+| StringLit "placeholder" |+| String)
    , id :: UndefinedOr String
    , image :: UndefinedOr String
    , prefix :: UndefinedOr JSX
    , role :: UndefinedOr String
    , suffix :: UndefinedOr JSX
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

foreign import data ReactSfc :: Type

foreign import data OnAction :: Type
