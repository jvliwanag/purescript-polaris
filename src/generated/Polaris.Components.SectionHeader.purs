module Polaris.Components.SectionHeader
  (SectionHeaderProps, sectionHeader, sectionHeaderRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type SectionHeaderProps = {}

sectionHeader :: forall r. Castable r SectionHeaderProps => r -> JSX
sectionHeader = elem sectionHeaderRC

foreign import sectionHeaderRC :: ReactComponent SectionHeaderProps
