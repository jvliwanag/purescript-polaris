module Polaris.Components.DropZone
  (DropZoneProps, dropZone, dropZoneRC, File, MouseEvent) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn3)
import Literals (StringLit)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type DropZoneProps
  = { accept :: UndefinedOr String
    , active :: UndefinedOr Boolean
    , allowMultiple :: UndefinedOr Boolean
    , children :: UndefinedOr (String |+| JSX)
    , disabled :: UndefinedOr Boolean
    , dropOnPage :: UndefinedOr Boolean
    , error :: UndefinedOr Boolean
    , errorOverlayText :: UndefinedOr String
    , id :: UndefinedOr String
    , label :: UndefinedOr JSX
    , labelAction :: UndefinedOr Action
    , labelHidden :: UndefinedOr Boolean
    , openFileDialog :: UndefinedOr Boolean
    , outline :: UndefinedOr Boolean
    , overlay :: UndefinedOr Boolean
    , overlayText :: UndefinedOr String
    , "type" :: UndefinedOr (StringLit "file" |+| StringLit "image")
    , customValidator :: UndefinedOr (EffectFn1 File Boolean)
    , onClick :: UndefinedOr (EffectFn1 MouseEvent Unit)
    , onDragEnter :: UndefinedOr (Effect Unit)
    , onDragLeave :: UndefinedOr (Effect Unit)
    , onDragOver :: UndefinedOr (Effect Unit)
    , onDrop
      :: UndefinedOr
         (EffectFn3 (Array File) (Array File) (Array File) Unit)
    , onDropAccepted :: UndefinedOr (EffectFn1 (Array File) Unit)
    , onDropRejected :: UndefinedOr (EffectFn1 (Array File) Unit)
    , onFileDialogClose :: UndefinedOr (Effect Unit)
    }

dropZone :: forall r. Castable r DropZoneProps => r -> JSX
dropZone = elem dropZoneRC

foreign import dropZoneRC :: ReactComponent DropZoneProps

foreign import data File :: Type

foreign import data MouseEvent :: Type
