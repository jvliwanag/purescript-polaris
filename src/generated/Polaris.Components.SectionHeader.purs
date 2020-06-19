module Polaris.Components.SectionHeader
  ( SectionHeaderProps
  , sectionHeader
  , sectionHeaderRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SectionHeaderProps =
  { 
  }

sectionHeader :: forall r. Coercible r SectionHeaderProps => r -> JSX
sectionHeader = element sectionHeaderRC <<< coerce

foreign import sectionHeaderRC :: ReactComponent SectionHeaderProps
