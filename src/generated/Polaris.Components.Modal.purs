module Polaris.Components.Modal
  ( ModalBaseProps'
  , ModalBaseProps
  , ModalProps
  , modal
  , modalRC
  , ComplexAction
  , complexAction
  , ReactSfc
  , RefObject
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
  = ( activator :: UndefinedOr (RefObject |+| JSX)
    , footer :: UndefinedOr JSX
    , iFrameName :: UndefinedOr String
    , instant :: UndefinedOr Boolean
    , large :: UndefinedOr Boolean
    , limitHeight :: UndefinedOr Boolean
    , loading :: UndefinedOr Boolean
    , open :: Boolean
    , primaryAction :: UndefinedOr ComplexAction
    , secondaryActions :: UndefinedOr (Array ComplexAction)
    , sectioned :: UndefinedOr Boolean
    , src :: UndefinedOr String
    , title :: String |+| JSX
    , titleHidden :: UndefinedOr Boolean
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

type ComplexAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , destructive :: UndefinedOr Boolean
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , icon :: UndefinedOr (ReactSfc |+| StringLit "placeholder" |+| String)
    , id :: UndefinedOr String
    , loading :: UndefinedOr Boolean
    , outline :: UndefinedOr Boolean
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

complexAction :: forall r. Castable r ComplexAction => r -> ComplexAction
complexAction = cast

foreign import data ReactSfc :: Type

foreign import data RefObject :: Type

foreign import data SyntheticEvent :: Type
