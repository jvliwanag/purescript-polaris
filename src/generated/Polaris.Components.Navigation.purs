module Polaris.Components.Navigation
  ( NavigationBaseProps'
  , NavigationBaseProps
  , NavigationProps
  , navigation
  , navigationRC
  , NavigationSectionProps
  , navigationSection
  , navigationSectionRC
  , Item
  , item
  , Rollup
  , rollup
  , SecondaryAction
  , secondaryAction
  , SubNavigationItem
  , subNavigationItem
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem, elemWithChildren, PropsWithChildren)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type NavigationBaseProps'
  = ( contextControl :: UndefinedOr JSX
    , location :: String
    , onDismiss :: UndefinedOr (Effect Unit)
    )

type NavigationBaseProps = { | NavigationBaseProps' }

type NavigationProps = PropsWithChildren NavigationBaseProps'

navigation :: forall r. Castable r NavigationBaseProps => r -> Array JSX -> JSX
navigation = elemWithChildren navigationRC

foreign import navigationRC :: ReactComponent NavigationProps

type NavigationSectionProps
  = { items :: UndefinedOr (Array Item)
    , icon :: UndefinedOr String
    , title :: UndefinedOr String
    , fill :: UndefinedOr Boolean
    , rollup :: UndefinedOr (Array Rollup)
    , action :: UndefinedOr (Array Action)
    , separator :: UndefinedOr Boolean
    }

navigationSection :: forall r. Castable r NavigationSectionProps => r -> JSX
navigationSection = elem navigationSectionRC

foreign import navigationSectionRC :: ReactComponent NavigationSectionProps

type Item
  = { url :: UndefinedOr String
    , matches :: UndefinedOr Boolean
    , exactMatch :: UndefinedOr Boolean
    , matchPaths :: UndefinedOr (Array String)
    , excludePaths :: UndefinedOr (Array String)
    , icon :: UndefinedOr String
    , badge :: UndefinedOr String
    , label :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , new :: UndefinedOr Boolean
    , accessibilityLabel :: UndefinedOr String
    , selected :: UndefinedOr Boolean
    , subNavigationItems :: UndefinedOr (Array SubNavigationItem)
    , secondaryAction :: UndefinedOr SecondaryAction
    , onClick :: UndefinedOr (Effect Unit)
    }

item :: forall r. Castable r Item => r -> Item
item = cast

type Rollup
  = { after :: UndefinedOr Number
    , view :: UndefinedOr String
    , hide :: UndefinedOr String
    , activePath :: UndefinedOr String
    }

rollup :: forall r. Castable r Rollup => r -> Rollup
rollup = cast

type SecondaryAction
  = { url :: UndefinedOr String
    , accessibilityLabel :: UndefinedOr String
    , icon :: UndefinedOr String
    }

secondaryAction :: forall r. Castable r SecondaryAction => r -> SecondaryAction
secondaryAction = cast

type SubNavigationItem
  = { url :: String
    , matches :: UndefinedOr Boolean
    , exactMatch :: UndefinedOr Boolean
    , matchPaths :: UndefinedOr (Array String)
    , "excludePaths?" :: UndefinedOr (Array String)
    , label :: UndefinedOr String
    , "disabled?" :: UndefinedOr Boolean
    , "new?" :: UndefinedOr Boolean
    , "onClick?(event" :: UndefinedOr (Effect Unit)
    }

subNavigationItem
  :: forall r
   . Castable
  r
  SubNavigationItem
  => r
  -> SubNavigationItem
subNavigationItem = cast
