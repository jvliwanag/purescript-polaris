module Polaris.Components.SkeletonPage
  ( SkeletonPageProps
  , skeletonPage
  , skeletonPageRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type SkeletonPageProps =
  { "breadcrumbs" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr (JSX)
  , "fullWidth" :: UndefinedOr (Boolean)
  , "narrowWidth" :: UndefinedOr (Boolean)
  , "primaryAction" :: UndefinedOr (Boolean)
  , "secondaryActions" :: UndefinedOr (Number)
  , "singleColumn" :: UndefinedOr (Boolean)
  , "title" :: UndefinedOr (String)
  }

skeletonPage :: forall r. Coercible r SkeletonPageProps => r -> JSX
skeletonPage = element skeletonPageRC <<< coerce

foreign import skeletonPageRC :: ReactComponent SkeletonPageProps
