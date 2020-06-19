module Polaris.Components.ThemeProvider
  ( Inverse
  , OriginalColorScheme
  , Required
  , ThemeProviderThemeConfig
  , themeProviderThemeConfig
  , ThemeProviderProps
  , themeProvider
  , themeProviderRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Inverse = StringLit "inverse"
type OriginalColorScheme = Required
foreign import data Required :: Type
type ThemeProviderThemeConfig =
  { "colorScheme" :: UndefinedOr ((OriginalColorScheme) |+| (Inverse))
  }

themeProviderThemeConfig :: forall r. Coercible r ThemeProviderThemeConfig => r -> ThemeProviderThemeConfig
themeProviderThemeConfig = coerce

type ThemeProviderProps =
  { "children" :: UndefinedOr (JSX)
  , "theme" :: ThemeProviderThemeConfig
  }

themeProvider :: forall r. Coercible r ThemeProviderProps => r -> JSX
themeProvider = element themeProviderRC <<< coerce

foreign import themeProviderRC :: ReactComponent ThemeProviderProps
