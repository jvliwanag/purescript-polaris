module Polaris.Components.ChoiceList
  ( Choice
  , choice
  , ReactElement
  , Undefined
  , ChoiceListProps
  , choiceList
  , choiceListRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Choice =
  { "describedByError" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "helpText" :: UndefinedOr (JSX)
  , "label" :: JSX
  , "value" :: String
  , "renderChildren" :: UndefinedOr (EffectFn1 (Boolean) (Undefined))
  }

choice :: forall r. Coercible r Choice => r -> Choice
choice = coerce
foreign import data ReactElement :: Type
foreign import data Undefined :: Type

type ChoiceListProps =
  { "allowMultiple" :: UndefinedOr (Boolean)
  , "choices" :: Array (Choice)
  , "disabled" :: UndefinedOr (Boolean)
  , "error" :: UndefinedOr ((String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement))))
  , "name" :: UndefinedOr (String)
  , "selected" :: Array (String)
  , "title" :: JSX
  , "titleHidden" :: UndefinedOr (Boolean)
  , "onChange" :: UndefinedOr (EffectFn2 (Array (String)) (String) (Unit))
  }

choiceList :: forall r. Coercible r ChoiceListProps => r -> JSX
choiceList = element choiceListRC <<< coerce

foreign import choiceListRC :: ReactComponent ChoiceListProps
