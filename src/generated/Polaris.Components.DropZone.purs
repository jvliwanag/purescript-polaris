module Polaris.Components.DropZone
  ( Action
  , File
  , MouseEvent
  , DropZoneProps
  , dropZone
  , dropZoneRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

foreign import data Action :: Type
foreign import data File :: Type
foreign import data MouseEvent :: Type

type DropZoneProps =
  { "accept" :: UndefinedOr (String)
  , "active" :: UndefinedOr (Boolean)
  , "allowMultiple" :: UndefinedOr (Boolean)
  , "children" :: UndefinedOr ((String) |+| (JSX))
  , "disabled" :: UndefinedOr (Boolean)
  , "dropOnPage" :: UndefinedOr (Boolean)
  , "error" :: UndefinedOr (Boolean)
  , "errorOverlayText" :: UndefinedOr (String)
  , "id" :: UndefinedOr (String)
  , "label" :: UndefinedOr (String)
  , "labelAction" :: UndefinedOr (Action)
  , "labelHidden" :: UndefinedOr (Boolean)
  , "openFileDialog" :: UndefinedOr (Boolean)
  , "outline" :: UndefinedOr (Boolean)
  , "overlay" :: UndefinedOr (Boolean)
  , "overlayText" :: UndefinedOr (String)
  , "type" :: UndefinedOr ((StringLit "file") |+| (StringLit "image"))
  , "customValidator" :: UndefinedOr (EffectFn1 (File) (Boolean))
  , "onClick" :: UndefinedOr (EffectFn1 (MouseEvent) (Unit))
  , "onDragEnter" :: UndefinedOr (Effect (Unit))
  , "onDragLeave" :: UndefinedOr (Effect (Unit))
  , "onDragOver" :: UndefinedOr (Effect (Unit))
  , "onDrop" :: UndefinedOr (EffectFn3 (Array (File)) (Array (File)) (Array (File)) (Unit))
  , "onDropAccepted" :: UndefinedOr (EffectFn1 (Array (File)) (Unit))
  , "onDropRejected" :: UndefinedOr (EffectFn1 (Array (File)) (Unit))
  , "onFileDialogClose" :: UndefinedOr (Effect (Unit))
  }

dropZone :: forall r. Coercible r DropZoneProps => r -> JSX
dropZone = element dropZoneRC <<< coerce

foreign import dropZoneRC :: ReactComponent DropZoneProps
