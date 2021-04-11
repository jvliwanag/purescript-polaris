module Polaris.Components.MediaCard
  ( MediaCardBaseProps'
  , MediaCardBaseProps
  , MediaCardProps
  , mediaCard
  , mediaCardRC
  , ActionListItemDescriptor
  , actionListItemDescriptor
  , ReactSfc
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
    , primaryAction :: UndefinedOr Action
    , secondaryAction :: UndefinedOr Action
    , size :: UndefinedOr (StringLit "small" |+| StringLit "medium")
    , title :: JSX
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

foreign import data ReactSfc :: Type
