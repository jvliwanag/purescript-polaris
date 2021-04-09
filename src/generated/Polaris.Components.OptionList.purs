module Polaris.Components.OptionList
  ( OptionListProps
  , optionList
  , optionListRC
  , OptionDescriptor
  , optionDescriptor
  , SectionDescriptor
  , sectionDescriptor
  ) where

import Prelude
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type OptionListProps
  = { allowMultiple :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , optionRole :: UndefinedOr String
    , options :: UndefinedOr (Array OptionDescriptor)
    , role :: UndefinedOr String
    , sections :: UndefinedOr (Array SectionDescriptor)
    , selected :: Array String
    , title :: UndefinedOr String
    , onChange :: EffectFn1 (Array String) Unit
    }

optionList :: forall r. Castable r OptionListProps => r -> JSX
optionList = elem optionListRC

foreign import optionListRC :: ReactComponent OptionListProps

type OptionDescriptor
  = { active :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , label :: JSX
    , media :: UndefinedOr JSX
    , value :: String
    }

optionDescriptor
  :: forall r
   . Castable
  r
  OptionDescriptor
  => r
  -> OptionDescriptor
optionDescriptor = cast

type SectionDescriptor
  = { options :: Array OptionDescriptor, title :: UndefinedOr String }

sectionDescriptor
  :: forall r
   . Castable
  r
  SectionDescriptor
  => r
  -> SectionDescriptor
sectionDescriptor = cast
