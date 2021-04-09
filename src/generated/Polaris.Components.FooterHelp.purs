module Polaris.Components.FooterHelp
  ( FooterHelpBaseProps'
  , FooterHelpBaseProps
  , FooterHelpProps
  , footerHelp
  , footerHelpRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type FooterHelpBaseProps' = ()

type FooterHelpBaseProps = { | FooterHelpBaseProps' }

type FooterHelpProps = PropsWithChildren FooterHelpBaseProps'

footerHelp :: forall r. Castable r FooterHelpBaseProps => r -> Array JSX -> JSX
footerHelp = elemWithChildren footerHelpRC

foreign import footerHelpRC :: ReactComponent FooterHelpProps
