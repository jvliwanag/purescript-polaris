module Polaris.Components.Modal
  ( ModalBaseProps'
  , ModalBaseProps
  , ModalProps
  , modal
  , modalRC
  , AppBridgeAction
  , appBridgeAction
  , ComplexAction
  , complexAction
  , FunctionComponent
  , SyntheticEvent
  ) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type ModalBaseProps'
  = ( footer :: UndefinedOr JSX
    , iFrameName :: UndefinedOr String
    , instant :: UndefinedOr Boolean
    , large :: UndefinedOr Boolean
    , limitHeight :: UndefinedOr Boolean
    , loading :: UndefinedOr Boolean
    , message :: UndefinedOr String
    , open :: Boolean
    , primaryAction :: UndefinedOr (AppBridgeAction |+| ComplexAction)
    , secondaryActions
      :: UndefinedOr
         (Array AppBridgeAction |+| Array ComplexAction)
    , sectioned :: UndefinedOr Boolean
    , size
      :: UndefinedOr
         ( StringLit "Small"
           |+| StringLit "Medium"
           |+| StringLit "Large"
           |+| StringLit "Full"
         )
    , src :: UndefinedOr String
    , title :: UndefinedOr (String |+| JSX)
    , onClose :: Effect Unit
    , onIFrameLoad :: UndefinedOr (EffectFn1 SyntheticEvent Unit)
    , onScrolledToBottom :: UndefinedOr (Effect Unit)
    , onTransitionEnd :: UndefinedOr (Effect Unit)
    )

type ModalBaseProps = { | ModalBaseProps' }

type ModalProps = PropsWithChildren ModalBaseProps'

modal :: forall r. Castable r ModalBaseProps => r -> Array JSX -> JSX
modal = elemWithChildren modalRC

foreign import modalRC :: ReactComponent ModalProps

type AppBridgeAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , target
      :: UndefinedOr
         (StringLit "ADMIN_PATH" |+| StringLit "REMOTE" |+| StringLit "APP")
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

appBridgeAction :: forall r. Castable r AppBridgeAction => r -> AppBridgeAction
appBridgeAction = cast

type ComplexAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , icon :: UndefinedOr (String |+| FunctionComponent)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , target
      :: UndefinedOr
         (StringLit "ADMIN_PATH" |+| StringLit "REMOTE" |+| StringLit "APP")
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

complexAction :: forall r. Castable r ComplexAction => r -> ComplexAction
complexAction = cast

foreign import data FunctionComponent :: Type

foreign import data SyntheticEvent :: Type
