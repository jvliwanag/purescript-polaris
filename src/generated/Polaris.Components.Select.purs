module Polaris.Components.Select
  ( Action
  , ReactElement
  , SelectGroup
  , selectGroup
  , StrictOption
  , strictOption
  , SelectProps
  , select
  , selectRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data Action :: Type
foreign import data ReactElement :: Type
type SelectGroup =
  { "options" :: Array ((String) |+| (StrictOption))
  , "title" :: String
  }

selectGroup :: forall r. Coercible r SelectGroup => r -> SelectGroup
selectGroup = coerce
type StrictOption =
  { "disabled" :: UndefinedOr (Boolean)
  , "label" :: String
  , "value" :: String
  }

strictOption :: forall r. Coercible r StrictOption => r -> StrictOption
strictOption = coerce

type SelectProps =
  { "disabled" :: UndefinedOr (Boolean)
  , "error" :: UndefinedOr ((String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement))) |+| (Boolean))
  , "helpText" :: UndefinedOr (JSX)
  , "id" :: UndefinedOr (String)
  , "label" :: String
  , "labelAction" :: UndefinedOr (Action)
  , "labelHidden" :: UndefinedOr (Boolean)
  , "labelInline" :: UndefinedOr (Boolean)
  , "name" :: UndefinedOr (String)
  , "options" :: UndefinedOr (Array ((String) |+| (StrictOption) |+| (SelectGroup)))
  , "placeholder" :: UndefinedOr (String)
  , "value" :: UndefinedOr (String)
  , "onBlur" :: UndefinedOr (Effect (Unit))
  , "onChange" :: UndefinedOr (EffectFn2 (String) (String) (Unit))
  , "onFocus" :: UndefinedOr (Effect (Unit))
  }

select :: forall r. Coercible r SelectProps => r -> JSX
select = element selectRC <<< coerce

foreign import selectRC :: ReactComponent SelectProps
