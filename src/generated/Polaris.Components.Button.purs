module Polaris.Components.Button
  ( ButtonProps
  , button
  , buttonRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , ConnectedDisclosure
  , connectedDisclosure
  , FunctionComponent
  , KeyboardEvent
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ButtonProps
  = { accessibilityLabel :: UndefinedOr String
    , ariaControls :: UndefinedOr String
    , ariaExpanded :: UndefinedOr Boolean
    , ariaPressed :: UndefinedOr Boolean
    , children :: UndefinedOr (String |+| Array String)
    , connectedDisclosure :: UndefinedOr ConnectedDisclosure
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , disclosure
      :: UndefinedOr
         (StringLit "down" |+| StringLit "up" |+| Boolean)
    , download :: UndefinedOr (String |+| Boolean)
    , external :: UndefinedOr Boolean
    , fullWidth :: UndefinedOr Boolean
    , icon :: UndefinedOr (JSX |+| String |+| FunctionComponent)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , monochrome :: UndefinedOr Boolean
    , outline :: UndefinedOr Boolean
    , plain :: UndefinedOr Boolean
    , pressed :: UndefinedOr Boolean
    , primary :: UndefinedOr Boolean
    , size
      :: UndefinedOr
         (StringLit "slim" |+| StringLit "medium" |+| StringLit "large")
    , submit :: UndefinedOr Boolean
    , textAlign
      :: UndefinedOr
         (StringLit "left" |+| StringLit "right" |+| StringLit "center")
    , url :: UndefinedOr String
    , onBlur :: UndefinedOr (Effect Unit)
    , onClick :: UndefinedOr (Effect Unit)
    , onFocus :: UndefinedOr (Effect Unit)
    , onKeyDown :: UndefinedOr (EffectFn1 KeyboardEvent Unit)
    , onKeyPress :: UndefinedOr (EffectFn1 KeyboardEvent Unit)
    , onKeyUp :: UndefinedOr (EffectFn1 KeyboardEvent Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

button :: forall r. Castable r ButtonProps => r -> JSX
button = elem buttonRC

foreign import buttonRC :: ReactComponent ButtonProps

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

type ConnectedDisclosure
  = { accessibilityLabel :: UndefinedOr String
    , actions :: Array ActionListItemDescriptor
    , disabled :: UndefinedOr Boolean
    }

connectedDisclosure
  :: forall r
   . Castable
  r
  ConnectedDisclosure
  => r
  -> ConnectedDisclosure
connectedDisclosure = cast

foreign import data FunctionComponent :: Type

foreign import data KeyboardEvent :: Type
