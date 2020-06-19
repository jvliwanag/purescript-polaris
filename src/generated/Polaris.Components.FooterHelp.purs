module Polaris.Components.FooterHelp
  ( FooterHelpProps
  , footerHelp
  , footerHelpRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type FooterHelpProps =
  { "children" :: UndefinedOr (JSX)
  }

footerHelp :: forall r. Coercible r FooterHelpProps => r -> JSX
footerHelp = element footerHelpRC <<< coerce

foreign import footerHelpRC :: ReactComponent FooterHelpProps
