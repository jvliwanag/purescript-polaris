module Polaris.Components.OptionList
  ( OptionDescriptor
  , optionDescriptor
  , ReactReactElement
  , SectionDescriptor
  , sectionDescriptor
  , OptionListProps
  , optionList
  , optionListRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type OptionDescriptor =
  { "active" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "label" :: JSX
  , "media" :: UndefinedOr (ReactReactElement)
  , "value" :: String
  }

optionDescriptor :: forall r. Coercible r OptionDescriptor => r -> OptionDescriptor
optionDescriptor = coerce
foreign import data ReactReactElement :: Type
type SectionDescriptor =
  { "options" :: Array (OptionDescriptor)
  , "title" :: UndefinedOr (String)
  }

sectionDescriptor :: forall r. Coercible r SectionDescriptor => r -> SectionDescriptor
sectionDescriptor = coerce

type OptionListProps =
  { "allowMultiple" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "optionRole" :: UndefinedOr (String)
  , "options" :: UndefinedOr (Array (OptionDescriptor))
  , "role" :: UndefinedOr (String)
  , "sections" :: UndefinedOr (Array (SectionDescriptor))
  , "selected" :: Array (String)
  , "title" :: UndefinedOr (String)
  , "onChange" :: EffectFn1 (Array (String)) (Unit)
  }

optionList :: forall r. Coercible r OptionListProps => r -> JSX
optionList = element optionListRC <<< coerce

foreign import optionListRC :: ReactComponent OptionListProps
