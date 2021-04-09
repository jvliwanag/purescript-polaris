module Polaris.Components.VideoThumbnail
  (VideoThumbnailProps, videoThumbnail, videoThumbnailRC) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr)

type VideoThumbnailProps
  = { accessibilityLabel :: UndefinedOr String
    , thumbnailUrl :: String
    , videoLength :: UndefinedOr Number
    , onBeforeStartPlaying :: UndefinedOr (Effect Unit)
    , onClick :: Effect Unit
    }

videoThumbnail :: forall r. Castable r VideoThumbnailProps => r -> JSX
videoThumbnail = elem videoThumbnailRC

foreign import videoThumbnailRC :: ReactComponent VideoThumbnailProps
