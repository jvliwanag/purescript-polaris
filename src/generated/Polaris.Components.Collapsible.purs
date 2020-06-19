module Polaris.Components.Collapsible
  ( Transition
  , transition
  , CollapsibleProps
  , collapsible
  , collapsibleRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type Transition =
  { "duration" :: UndefinedOr (String)
  , "timingFunction" :: UndefinedOr (String)
  }

transition :: forall r. Coercible r Transition => r -> Transition
transition = coerce

type CollapsibleProps =
  { "children" :: UndefinedOr (JSX)
  , "id" :: String
  , "open" :: Boolean
  , "transition" :: UndefinedOr (Transition)
  }

collapsible :: forall r. Coercible r CollapsibleProps => r -> JSX
collapsible = element collapsibleRC <<< coerce

foreign import collapsibleRC :: ReactComponent CollapsibleProps
