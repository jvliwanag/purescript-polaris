module Polaris.Components.Pagination
  ( PaginationProps
  , pagination
  , paginationRC
  , Add
  , Alt
  , BackSlash
  , Backspace
  , CapsLock
  , CloseBracket
  , Comma
  , Ctrl
  , Dash
  , Decimal
  , Delete
  , Divide
  , DownArrow
  , End
  , Enter
  , Equals
  , Escape
  , F1
  , F10
  , F11
  , F12
  , F2
  , F3
  , F4
  , F5
  , F6
  , F7
  , F8
  , F9
  , ForwardSlash
  , GraveAccent
  , Home
  , Insert
  , Key
  , key
  , Key0
  , Key1
  , Key2
  , Key3
  , Key4
  , Key5
  , Key6
  , Key7
  , Key8
  , Key9
  , KeyA
  , KeyB
  , KeyC
  , KeyD
  , KeyE
  , KeyF
  , KeyG
  , KeyH
  , KeyI
  , KeyJ
  , KeyK
  , KeyL
  , KeyM
  , KeyN
  , KeyO
  , KeyP
  , KeyQ
  , KeyR
  , KeyS
  , KeyT
  , KeyU
  , KeyV
  , KeyW
  , KeyX
  , KeyY
  , KeyZ
  , LeftArrow
  , LeftMeta
  , Multiply
  , NumLock
  , Numpad0
  , Numpad1
  , Numpad2
  , Numpad3
  , Numpad4
  , Numpad5
  , Numpad6
  , Numpad7
  , Numpad8
  , Numpad9
  , OpenBracket
  , PageDown
  , PageUp
  , Pause
  , Period
  , RightArrow
  , RightMeta
  , ScrollLock
  , Select
  , Semicolon
  , Shift
  , SingleQuote
  , Space
  , Subtract
  , Tab
  , UpArrow
  ) where

import Prelude
import Effect (Effect)
import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr)

type PaginationProps
  = { accessibilityLabel :: UndefinedOr String
    , hasNext :: UndefinedOr Boolean
    , hasPrevious :: UndefinedOr Boolean
    , label :: UndefinedOr String
    , nextKeys :: UndefinedOr (Array Key)
    , nextTooltip :: UndefinedOr String
    , nextURL :: UndefinedOr String
    , plain :: UndefinedOr Boolean
    , previousKeys :: UndefinedOr (Array Key)
    , previousTooltip :: UndefinedOr String
    , previousURL :: UndefinedOr String
    , onNext :: UndefinedOr (Effect Unit)
    , onPrevious :: UndefinedOr (Effect Unit)
    }

pagination :: forall r. Castable r PaginationProps => r -> JSX
pagination = elem paginationRC

foreign import paginationRC :: ReactComponent PaginationProps

foreign import data Add :: Type

foreign import data Alt :: Type

foreign import data BackSlash :: Type

foreign import data Backspace :: Type

foreign import data CapsLock :: Type

foreign import data CloseBracket :: Type

foreign import data Comma :: Type

foreign import data Ctrl :: Type

foreign import data Dash :: Type

foreign import data Decimal :: Type

foreign import data Delete :: Type

foreign import data Divide :: Type

foreign import data DownArrow :: Type

foreign import data End :: Type

foreign import data Enter :: Type

foreign import data Equals :: Type

foreign import data Escape :: Type

foreign import data F1 :: Type

foreign import data F10 :: Type

foreign import data F11 :: Type

foreign import data F12 :: Type

foreign import data F2 :: Type

foreign import data F3 :: Type

foreign import data F4 :: Type

foreign import data F5 :: Type

foreign import data F6 :: Type

foreign import data F7 :: Type

foreign import data F8 :: Type

foreign import data F9 :: Type

foreign import data ForwardSlash :: Type

foreign import data GraveAccent :: Type

foreign import data Home :: Type

foreign import data Insert :: Type

type Key
  = { "Add" :: Add
    , "Alt" :: Alt
    , "BackSlash" :: BackSlash
    , "Backspace" :: Backspace
    , "CapsLock" :: CapsLock
    , "CloseBracket" :: CloseBracket
    , "Comma" :: Comma
    , "Ctrl" :: Ctrl
    , "Dash" :: Dash
    , "Decimal" :: Decimal
    , "Delete" :: Delete
    , "Divide" :: Divide
    , "DownArrow" :: DownArrow
    , "End" :: End
    , "Enter" :: Enter
    , "Equals" :: Equals
    , "Escape" :: Escape
    , "F1" :: F1
    , "F10" :: F10
    , "F11" :: F11
    , "F12" :: F12
    , "F2" :: F2
    , "F3" :: F3
    , "F4" :: F4
    , "F5" :: F5
    , "F6" :: F6
    , "F7" :: F7
    , "F8" :: F8
    , "F9" :: F9
    , "ForwardSlash" :: ForwardSlash
    , "GraveAccent" :: GraveAccent
    , "Home" :: Home
    , "Insert" :: Insert
    , "Key0" :: Key0
    , "Key1" :: Key1
    , "Key2" :: Key2
    , "Key3" :: Key3
    , "Key4" :: Key4
    , "Key5" :: Key5
    , "Key6" :: Key6
    , "Key7" :: Key7
    , "Key8" :: Key8
    , "Key9" :: Key9
    , "KeyA" :: KeyA
    , "KeyB" :: KeyB
    , "KeyC" :: KeyC
    , "KeyD" :: KeyD
    , "KeyE" :: KeyE
    , "KeyF" :: KeyF
    , "KeyG" :: KeyG
    , "KeyH" :: KeyH
    , "KeyI" :: KeyI
    , "KeyJ" :: KeyJ
    , "KeyK" :: KeyK
    , "KeyL" :: KeyL
    , "KeyM" :: KeyM
    , "KeyN" :: KeyN
    , "KeyO" :: KeyO
    , "KeyP" :: KeyP
    , "KeyQ" :: KeyQ
    , "KeyR" :: KeyR
    , "KeyS" :: KeyS
    , "KeyT" :: KeyT
    , "KeyU" :: KeyU
    , "KeyV" :: KeyV
    , "KeyW" :: KeyW
    , "KeyX" :: KeyX
    , "KeyY" :: KeyY
    , "KeyZ" :: KeyZ
    , "LeftArrow" :: LeftArrow
    , "LeftMeta" :: LeftMeta
    , "Multiply" :: Multiply
    , "NumLock" :: NumLock
    , "Numpad0" :: Numpad0
    , "Numpad1" :: Numpad1
    , "Numpad2" :: Numpad2
    , "Numpad3" :: Numpad3
    , "Numpad4" :: Numpad4
    , "Numpad5" :: Numpad5
    , "Numpad6" :: Numpad6
    , "Numpad7" :: Numpad7
    , "Numpad8" :: Numpad8
    , "Numpad9" :: Numpad9
    , "OpenBracket" :: OpenBracket
    , "PageDown" :: PageDown
    , "PageUp" :: PageUp
    , "Pause" :: Pause
    , "Period" :: Period
    , "RightArrow" :: RightArrow
    , "RightMeta" :: RightMeta
    , "ScrollLock" :: ScrollLock
    , "Select" :: Select
    , "Semicolon" :: Semicolon
    , "Shift" :: Shift
    , "SingleQuote" :: SingleQuote
    , "Space" :: Space
    , "Subtract" :: Subtract
    , "Tab" :: Tab
    , "UpArrow" :: UpArrow
    }

key :: forall r. Castable r Key => r -> Key
key = cast

foreign import data Key0 :: Type

foreign import data Key1 :: Type

foreign import data Key2 :: Type

foreign import data Key3 :: Type

foreign import data Key4 :: Type

foreign import data Key5 :: Type

foreign import data Key6 :: Type

foreign import data Key7 :: Type

foreign import data Key8 :: Type

foreign import data Key9 :: Type

foreign import data KeyA :: Type

foreign import data KeyB :: Type

foreign import data KeyC :: Type

foreign import data KeyD :: Type

foreign import data KeyE :: Type

foreign import data KeyF :: Type

foreign import data KeyG :: Type

foreign import data KeyH :: Type

foreign import data KeyI :: Type

foreign import data KeyJ :: Type

foreign import data KeyK :: Type

foreign import data KeyL :: Type

foreign import data KeyM :: Type

foreign import data KeyN :: Type

foreign import data KeyO :: Type

foreign import data KeyP :: Type

foreign import data KeyQ :: Type

foreign import data KeyR :: Type

foreign import data KeyS :: Type

foreign import data KeyT :: Type

foreign import data KeyU :: Type

foreign import data KeyV :: Type

foreign import data KeyW :: Type

foreign import data KeyX :: Type

foreign import data KeyY :: Type

foreign import data KeyZ :: Type

foreign import data LeftArrow :: Type

foreign import data LeftMeta :: Type

foreign import data Multiply :: Type

foreign import data NumLock :: Type

foreign import data Numpad0 :: Type

foreign import data Numpad1 :: Type

foreign import data Numpad2 :: Type

foreign import data Numpad3 :: Type

foreign import data Numpad4 :: Type

foreign import data Numpad5 :: Type

foreign import data Numpad6 :: Type

foreign import data Numpad7 :: Type

foreign import data Numpad8 :: Type

foreign import data Numpad9 :: Type

foreign import data OpenBracket :: Type

foreign import data PageDown :: Type

foreign import data PageUp :: Type

foreign import data Pause :: Type

foreign import data Period :: Type

foreign import data RightArrow :: Type

foreign import data RightMeta :: Type

foreign import data ScrollLock :: Type

foreign import data Select :: Type

foreign import data Semicolon :: Type

foreign import data Shift :: Type

foreign import data SingleQuote :: Type

foreign import data Space :: Type

foreign import data Subtract :: Type

foreign import data Tab :: Type

foreign import data UpArrow :: Type
