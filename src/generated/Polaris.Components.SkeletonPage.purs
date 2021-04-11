module Polaris.Components.SkeletonPage
  ( SkeletonPageBaseProps'
  , SkeletonPageBaseProps
  , SkeletonPageProps
  , skeletonPage
  , skeletonPageRC
  ) where

import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type SkeletonPageBaseProps'
  = ( breadcrumbs :: UndefinedOr Boolean
    , fullWidth :: UndefinedOr Boolean
    , narrowWidth :: UndefinedOr Boolean
    , primaryAction :: UndefinedOr Boolean
    , secondaryActions :: UndefinedOr Number
    , title :: UndefinedOr String
    )

type SkeletonPageBaseProps = { | SkeletonPageBaseProps' }

type SkeletonPageProps = PropsWithChildren SkeletonPageBaseProps'

skeletonPage
  :: forall r
   . Castable
  r
  SkeletonPageBaseProps
  => r
  -> Array JSX
  -> JSX
skeletonPage = elemWithChildren skeletonPageRC

foreign import skeletonPageRC :: ReactComponent SkeletonPageProps
