module Polaris.Components.ThemeProvider
  ( ThemeProviderBaseProps'
  , ThemeProviderBaseProps
  , ThemeProviderProps
  , themeProvider
  , themeProviderRC
  , Config
  , Partial
  , ThemeConfig
  , themeConfig
  , ThemeLogo
  , themeLogo
  ) where

import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ThemeProviderBaseProps'
  = ( alwaysRenderCustomProperties :: UndefinedOr Boolean
    , theme :: UndefinedOr ThemeConfig
    )

type ThemeProviderBaseProps = { | ThemeProviderBaseProps' }

type ThemeProviderProps = PropsWithChildren ThemeProviderBaseProps'

themeProvider
  :: forall r
   . Castable
  r
  ThemeProviderBaseProps
  => r
  -> Array JSX
  -> JSX
themeProvider = elemWithChildren themeProviderRC

foreign import themeProviderRC :: ReactComponent ThemeProviderProps

foreign import data Config :: Type

foreign import data Partial :: Type

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
