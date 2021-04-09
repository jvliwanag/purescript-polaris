module Polaris.Components.Banner
  ( BannerBaseProps'
  , BannerBaseProps
  , BannerProps
  , banner
  , bannerRC
  , DisableableActionLoadableAction
  , disableableActionLoadableAction
  , FunctionComponent
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type BannerBaseProps'
  = ( action :: UndefinedOr DisableableActionLoadableAction
    , icon :: UndefinedOr (String |+| FunctionComponent)
    , secondaryAction :: UndefinedOr Action
    , status
      :: UndefinedOr
         ( StringLit "success"
           |+| StringLit "info"
           |+| StringLit "warning"
           |+| StringLit "critical"
         )
    , stopAnnouncements :: UndefinedOr Boolean
    , title :: UndefinedOr String
    , onDismiss :: UndefinedOr (Effect Unit)
    )

type BannerBaseProps = { | BannerBaseProps' }

type BannerProps = PropsWithChildren BannerBaseProps'

banner :: forall r. Castable r BannerBaseProps => r -> Array JSX -> JSX
banner = elemWithChildren bannerRC

foreign import bannerRC :: ReactComponent BannerProps

type DisableableActionLoadableAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    , loading :: UndefinedOr Boolean
    }

disableableActionLoadableAction
  :: forall r
   . Castable
  r
  DisableableActionLoadableAction
  => r
  -> DisableableActionLoadableAction
disableableActionLoadableAction = cast

foreign import data FunctionComponent :: Type
