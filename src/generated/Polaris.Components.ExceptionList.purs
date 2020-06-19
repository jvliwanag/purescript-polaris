module Polaris.Components.ExceptionList
  ( FunctionComponent
  , Item
  , item
  , ReactElement
  , ExceptionListProps
  , exceptionList
  , exceptionListRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data FunctionComponent :: Type
type Item =
  { "description" :: UndefinedOr ((String) |+| (ReactElement) |+| (Array ((String) |+| (ReactElement))))
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "status" :: UndefinedOr ((StringLit "critical") |+| (StringLit "warning"))
  , "title" :: UndefinedOr (String)
  , "truncate" :: UndefinedOr (Boolean)
  }

item :: forall r. Coercible r Item => r -> Item
item = coerce
foreign import data ReactElement :: Type

type ExceptionListProps =
  { "items" :: Array (Item)
  }

exceptionList :: forall r. Coercible r ExceptionListProps => r -> JSX
exceptionList = element exceptionListRC <<< coerce

foreign import exceptionListRC :: ReactComponent ExceptionListProps
