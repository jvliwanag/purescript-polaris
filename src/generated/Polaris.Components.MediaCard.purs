module Polaris.Components.MediaCard
  ( MediaCardBaseProps'
  , MediaCardBaseProps
  , MediaCardProps
  , mediaCard
  , mediaCardRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type MediaCardBaseProps'
  = ( description :: String
    , popoverActions :: UndefinedOr (Array ActionListItemDescriptor)
    , portrait :: UndefinedOr Boolean
    , primaryAction :: Action
    , secondaryAction :: UndefinedOr Action
    , title :: String
    )

type MediaCardBaseProps = { | MediaCardBaseProps' }

type MediaCardProps = PropsWithChildren MediaCardBaseProps'

mediaCard :: forall r. Castable r MediaCardBaseProps => r -> Array JSX -> JSX
mediaCard = elemWithChildren mediaCardRC

foreign import mediaCardRC :: ReactComponent MediaCardProps

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

foreign import data FunctionComponent :: Type
