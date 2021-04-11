module Polaris.Components.Filters
  ( FiltersBaseProps'
  , FiltersBaseProps
  , FiltersProps
  , filters
  , filtersRC
  , AppliedFilterInterface
  , appliedFilterInterface
  , FilterInterface
  , filterInterface
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type FiltersBaseProps'
  = ( appliedFilters :: UndefinedOr (Array AppliedFilterInterface)
    , disabled :: UndefinedOr Boolean
    , filters :: Array FilterInterface
    , focused :: UndefinedOr Boolean
    , helpText :: UndefinedOr (String |+| JSX)
    , hideQueryField :: UndefinedOr Boolean
    , hideTags :: UndefinedOr Boolean
    , queryPlaceholder :: UndefinedOr String
    , queryValue :: UndefinedOr String
    , onClearAll :: Effect Unit
    , onQueryBlur :: UndefinedOr (Effect Unit)
    , onQueryChange :: EffectFn1 String Unit
    , onQueryClear :: Effect Unit
    , onQueryFocus :: UndefinedOr (Effect Unit)
    )

type FiltersBaseProps = { | FiltersBaseProps' }

type FiltersProps = PropsWithChildren FiltersBaseProps'

filters :: forall r. Castable r FiltersBaseProps => r -> Array JSX -> JSX
filters = elemWithChildren filtersRC

foreign import filtersRC :: ReactComponent FiltersProps

type AppliedFilterInterface
  = { key :: String, label :: String, onRemove :: EffectFn1 String Unit }

appliedFilterInterface
  :: forall r
   . Castable
  r
  AppliedFilterInterface
  => r
  -> AppliedFilterInterface
appliedFilterInterface = cast

type FilterInterface
  = { disabled :: UndefinedOr Boolean
    , filter :: JSX
    , hideClearButton :: UndefinedOr Boolean
    , key :: String
    , label :: String
    , shortcut :: UndefinedOr Boolean
    }

filterInterface :: forall r. Castable r FilterInterface => r -> FilterInterface
filterInterface = cast
