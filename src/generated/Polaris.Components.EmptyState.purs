module Polaris.Components.EmptyState
  ( EmptyStateBaseProps'
  , EmptyStateBaseProps
  , EmptyStateProps
  , emptyState
  , emptyStateRC
  , ComplexAction
  , complexAction
  , ReactSfc
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type EmptyStateBaseProps'
  = ( action :: UndefinedOr ComplexAction
    , footerContent :: UndefinedOr JSX
    , fullWidth :: UndefinedOr Boolean
    , heading :: UndefinedOr String
    , image :: String
    , imageContained :: UndefinedOr Boolean
    , largeImage :: UndefinedOr String
    , secondaryAction :: UndefinedOr ComplexAction
    )

type EmptyStateBaseProps = { | EmptyStateBaseProps' }

type EmptyStateProps = PropsWithChildren EmptyStateBaseProps'

emptyState :: forall r. Castable r EmptyStateBaseProps => r -> Array JSX -> JSX
emptyState = elemWithChildren emptyStateRC

foreign import emptyStateRC :: ReactComponent EmptyStateProps

type ComplexAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , icon :: UndefinedOr (ReactSfc |+| StringLit "placeholder" |+| String)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , outline :: UndefinedOr Boolean
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

complexAction :: forall r. Castable r ComplexAction => r -> ComplexAction
complexAction = cast

foreign import data ReactSfc :: Type
