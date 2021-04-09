module Polaris.Components.ResourceItem
  ( ResourceItemBaseProps'
  , ResourceItemBaseProps
  , ResourceItemProps
  , resourceItem
  , resourceItemRC
  , Alignment
  , DisableableAction
  ) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type ResourceItemBaseProps'
  = ( accessibilityLabel :: UndefinedOr String
    , name :: UndefinedOr String
    , ariaControls :: UndefinedOr String
    , ariaExpanded :: UndefinedOr Boolean
    , id :: String
    , media :: UndefinedOr JSX
    , persistActions :: UndefinedOr Boolean
    , shortcutActions :: UndefinedOr (Array DisableableAction)
    , sortOrder :: UndefinedOr Number
    , url :: UndefinedOr String
    , external :: UndefinedOr Boolean
    , onClick :: UndefinedOr (EffectFn1 String Unit)
    , verticalAlignment :: UndefinedOr Alignment
    )

type ResourceItemBaseProps = { | ResourceItemBaseProps' }

type ResourceItemProps = PropsWithChildren ResourceItemBaseProps'

resourceItem
  :: forall r
   . Castable
  r
  ResourceItemBaseProps
  => r
  -> Array JSX
  -> JSX
resourceItem = elemWithChildren resourceItemRC

foreign import resourceItemRC :: ReactComponent ResourceItemProps

foreign import data Alignment :: Type

foreign import data DisableableAction :: Type
