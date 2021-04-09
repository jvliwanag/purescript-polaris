module Polaris.Components.ContextualSaveBar
  ( ContextualSaveBarProps
  , contextualSaveBar
  , contextualSaveBarRC
  , ContextualSaveBarAction
  , contextualSaveBarAction
  , ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  , contextualSaveBarDiscardActionPropsContextualSaveBarAction
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type ContextualSaveBarProps
  = { alignContentFlush :: UndefinedOr Boolean
    , discardAction
      :: UndefinedOr
         ContextualSaveBarDiscardActionPropsContextualSaveBarAction
    , message :: UndefinedOr String
    , saveAction :: UndefinedOr ContextualSaveBarAction
    }

contextualSaveBar :: forall r. Castable r ContextualSaveBarProps => r -> JSX
contextualSaveBar = elem contextualSaveBarRC

foreign import contextualSaveBarRC :: ReactComponent ContextualSaveBarProps

type ContextualSaveBarAction
  = { content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , loading :: UndefinedOr Boolean
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    }

contextualSaveBarAction
  :: forall r
   . Castable
  r
  ContextualSaveBarAction
  => r
  -> ContextualSaveBarAction
contextualSaveBarAction = cast

type ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  = { discardConfirmationModal :: UndefinedOr Boolean
    , content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , loading :: UndefinedOr Boolean
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    }

contextualSaveBarDiscardActionPropsContextualSaveBarAction
  :: forall r
   . Castable
  r
  ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  => r
  -> ContextualSaveBarDiscardActionPropsContextualSaveBarAction
contextualSaveBarDiscardActionPropsContextualSaveBarAction = cast
