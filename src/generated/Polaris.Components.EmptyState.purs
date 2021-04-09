module Polaris.Components.EmptyState
  ( EmptyStateBaseProps'
  , EmptyStateBaseProps
  , EmptyStateProps
  , emptyState
  , emptyStateRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type EmptyStateBaseProps'
  = ( action :: UndefinedOr Action
    , centeredLayout :: UndefinedOr Boolean
    , footerContent :: UndefinedOr JSX
    , heading :: UndefinedOr String
    , image :: String
    , imageContained :: UndefinedOr Boolean
    , largeImage :: UndefinedOr String
    , secondaryAction :: UndefinedOr Action
    )

type EmptyStateBaseProps = { | EmptyStateBaseProps' }

type EmptyStateProps = PropsWithChildren EmptyStateBaseProps'

emptyState :: forall r. Castable r EmptyStateBaseProps => r -> Array JSX -> JSX
emptyState = elemWithChildren emptyStateRC

foreign import emptyStateRC :: ReactComponent EmptyStateProps
