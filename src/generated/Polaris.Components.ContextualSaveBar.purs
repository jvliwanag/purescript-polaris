module Polaris.Components.ContextualSaveBar
  ( ContextualSaveBarAction
  , contextualSaveBarAction
  , ContextualSaveBarDiscardActionPropsContextualSaveBarAction
  , contextualSaveBarDiscardActionPropsContextualSaveBarAction
  , ContextualSaveBarProps
  , contextualSaveBar
  , contextualSaveBarRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type ContextualSaveBarAction =
  { "content" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "loading" :: UndefinedOr (Boolean)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  }

contextualSaveBarAction :: forall r. Coercible r ContextualSaveBarAction => r -> ContextualSaveBarAction
contextualSaveBarAction = coerce
type ContextualSaveBarDiscardActionPropsContextualSaveBarAction =
  { "discardConfirmationModal" :: UndefinedOr (Boolean)
  , "content" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "loading" :: UndefinedOr (Boolean)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  }

contextualSaveBarDiscardActionPropsContextualSaveBarAction :: forall r. Coercible r ContextualSaveBarDiscardActionPropsContextualSaveBarAction => r -> ContextualSaveBarDiscardActionPropsContextualSaveBarAction
contextualSaveBarDiscardActionPropsContextualSaveBarAction = coerce

type ContextualSaveBarProps =
  { "alignContentFlush" :: UndefinedOr (Boolean)
  , "discardAction" :: UndefinedOr (ContextualSaveBarDiscardActionPropsContextualSaveBarAction)
  , "message" :: UndefinedOr (String)
  , "saveAction" :: UndefinedOr (ContextualSaveBarAction)
  }

contextualSaveBar :: forall r. Coercible r ContextualSaveBarProps => r -> JSX
contextualSaveBar = element contextualSaveBarRC <<< coerce

foreign import contextualSaveBarRC :: ReactComponent ContextualSaveBarProps
