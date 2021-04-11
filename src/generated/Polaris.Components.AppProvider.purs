module Polaris.Components.AppProvider
  ( AppProviderBaseProps'
  , AppProviderBaseProps
  , AppProviderProps
  , appProvider
  , appProviderRC
  , Config
  , FeaturesConfig
  , Partial
  , ReactComponentType
  , ThemeConfig
  , themeConfig
  , ThemeLogo
  , themeLogo
  , TranslationDictionary
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type AppProviderBaseProps'
  = ( features :: UndefinedOr FeaturesConfig
    , i18n :: TranslationDictionary |+| Array TranslationDictionary
    , linkComponent :: UndefinedOr ReactComponentType
    , theme :: UndefinedOr ThemeConfig
    )

type AppProviderBaseProps = { | AppProviderBaseProps' }

type AppProviderProps = PropsWithChildren AppProviderBaseProps'

appProvider
  :: forall r
   . Castable
  r
  AppProviderBaseProps
  => r
  -> Array JSX
  -> JSX
appProvider = elemWithChildren appProviderRC

foreign import appProviderRC :: ReactComponent AppProviderProps

foreign import data Config :: Type

foreign import data FeaturesConfig :: Type

foreign import data Partial :: Type

foreign import data ReactComponentType :: Type

type ThemeConfig
  = { colorScheme
      :: UndefinedOr
         (StringLit "light" |+| StringLit "dark" |+| StringLit "inverse")
    , colors :: UndefinedOr Partial
    , config :: UndefinedOr Config
    , frameOffset :: UndefinedOr String
    , logo :: UndefinedOr ThemeLogo
    }

themeConfig :: forall r. Castable r ThemeConfig => r -> ThemeConfig
themeConfig = cast

type ThemeLogo
  = { accessibilityLabel :: UndefinedOr String
    , contextualSaveBarSource :: UndefinedOr String
    , topBarSource :: UndefinedOr String
    , url :: UndefinedOr String
    , width :: UndefinedOr Number
    }

themeLogo :: forall r. Castable r ThemeLogo => r -> ThemeLogo
themeLogo = cast

foreign import data TranslationDictionary :: Type
