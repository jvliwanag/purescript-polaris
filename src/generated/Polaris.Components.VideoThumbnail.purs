module Polaris.Components.VideoThumbnail
  ( VideoThumbnailProps
  , videoThumbnail
  , videoThumbnailRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union


type VideoThumbnailProps =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "thumbnailUrl" :: String
  , "videoLength" :: UndefinedOr (Number)
  , "onBeforeStartPlaying" :: UndefinedOr (Effect (Unit))
  , "onClick" :: Effect (Unit)
  }

videoThumbnail :: forall r. Coercible r VideoThumbnailProps => r -> JSX
videoThumbnail = element videoThumbnailRC <<< coerce

foreign import videoThumbnailRC :: ReactComponent VideoThumbnailProps
