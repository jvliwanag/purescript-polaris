module Polaris.Components.ExceptionList
  ( ExceptionListProps
  , exceptionList
  , exceptionListRC
  , FunctionComponent
  , Item
  , item
  ) where

import Literals (StringLit)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ExceptionListProps = { items :: Array Item }

exceptionList :: forall r. Castable r ExceptionListProps => r -> JSX
exceptionList = elem exceptionListRC

foreign import exceptionListRC :: ReactComponent ExceptionListProps

foreign import data FunctionComponent :: Type

type Item
  = { description :: UndefinedOr (String |+| JSX |+| Array (String |+| JSX))
    , icon :: UndefinedOr (String |+| FunctionComponent)
    , status :: UndefinedOr (StringLit "critical" |+| StringLit "warning")
    , title :: UndefinedOr String
    , truncate :: UndefinedOr Boolean
    }

item :: forall r. Castable r Item => r -> Item
item = cast
