module Polaris.Components.Avatar
  ( AvatarProps
  , avatar
  , avatarRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type AvatarProps =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "customer" :: UndefinedOr (Boolean)
  , "initials" :: UndefinedOr (String)
  , "name" :: UndefinedOr (String)
  , "size" :: UndefinedOr ((StringLit "small") |+| (StringLit "medium") |+| (StringLit "large"))
  , "source" :: UndefinedOr (String)
  }

avatar :: forall r. Coercible r AvatarProps => r -> JSX
avatar = element avatarRC <<< coerce

foreign import avatarRC :: ReactComponent AvatarProps
