module Polaris.Components.Tabs
  ( TabsBaseProps'
  , TabsBaseProps
  , TabsProps
  , tabs
  , tabsRC
  , TabDescriptor
  , tabDescriptor
  ) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type TabsBaseProps'
  = ( disclosureText :: UndefinedOr String
    , fitted :: UndefinedOr Boolean
    , selected :: Number
    , tabs :: Array TabDescriptor
    , onSelect :: UndefinedOr (EffectFn1 Number Unit)
    )

type TabsBaseProps = { | TabsBaseProps' }

type TabsProps = PropsWithChildren TabsBaseProps'

tabs :: forall r. Castable r TabsBaseProps => r -> Array JSX -> JSX
tabs = elemWithChildren tabsRC

foreign import tabsRC :: ReactComponent TabsProps

type TabDescriptor
  = { accessibilityLabel :: UndefinedOr String
    , content :: JSX
    , id :: String
    , panelID :: UndefinedOr String
    , url :: UndefinedOr String
    }

tabDescriptor :: forall r. Castable r TabDescriptor => r -> TabDescriptor
tabDescriptor = cast
