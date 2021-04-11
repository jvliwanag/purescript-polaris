module Polaris.Components.TextField
  (TextFieldProps, textField, textFieldRC) where

import Prelude
import Effect (Effect)
import Effect.Uncurried (EffectFn1, EffectFn2)
import Literals (StringLit)
import Polaris.Internal (elem)
import Polaris.Types (Action)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type TextFieldProps
  = { align
      :: UndefinedOr
         (StringLit "left" |+| StringLit "center" |+| StringLit "right")
    , ariaActiveDescendant :: UndefinedOr String
    , ariaAutocomplete :: UndefinedOr String
    , ariaControls :: UndefinedOr String
    , ariaExpanded :: UndefinedOr Boolean
    , ariaOwns :: UndefinedOr String
    , autoComplete :: UndefinedOr (Boolean |+| String)
    , autoFocus :: UndefinedOr Boolean
    , clearButton :: UndefinedOr Boolean
    , connectedLeft :: UndefinedOr JSX
    , connectedRight :: UndefinedOr JSX
    , disabled :: UndefinedOr Boolean
    , error
      :: UndefinedOr
         (String |+| JSX |+| Array (String |+| JSX) |+| Boolean)
    , focused :: UndefinedOr Boolean
    , helpText :: UndefinedOr JSX
    , id :: UndefinedOr String
    , inputMode
      :: UndefinedOr
         ( StringLit "none"
           |+| StringLit "text"
           |+| StringLit "decimal"
           |+| StringLit "numeric"
           |+| StringLit "tel"
           |+| StringLit "search"
           |+| StringLit "email"
           |+| StringLit "url"
         )
    , label :: JSX
    , labelAction :: UndefinedOr Action
    , labelHidden :: UndefinedOr Boolean
    , max :: UndefinedOr (Number |+| String)
    , maxLength :: UndefinedOr Number
    , min :: UndefinedOr (Number |+| String)
    , minLength :: UndefinedOr Number
    , multiline :: UndefinedOr (Boolean |+| Number)
    , name :: UndefinedOr String
    , pattern :: UndefinedOr String
    , placeholder :: UndefinedOr String
    , prefix :: UndefinedOr JSX
    , readOnly :: UndefinedOr Boolean
    , role :: UndefinedOr String
    , showCharacterCount :: UndefinedOr Boolean
    , spellCheck :: UndefinedOr Boolean
    , step :: UndefinedOr Number
    , suffix :: UndefinedOr JSX
    , "type"
      :: UndefinedOr
         ( StringLit "text"
           |+| StringLit "email"
           |+| StringLit "number"
           |+| StringLit "password"
           |+| StringLit "search"
           |+| StringLit "tel"
           |+| StringLit "url"
           |+| StringLit "date"
           |+| StringLit "datetime-local"
           |+| StringLit "month"
           |+| StringLit "time"
           |+| StringLit "week"
           |+| StringLit "currency"
         )
    , value :: UndefinedOr String
    , onBlur :: UndefinedOr (Effect Unit)
    , onChange :: UndefinedOr (EffectFn2 String String Unit)
    , onClearButtonClick :: UndefinedOr (EffectFn1 String Unit)
    , onFocus :: UndefinedOr (Effect Unit)
    }

textField :: forall r. Castable r TextFieldProps => r -> JSX
textField = elem textFieldRC

foreign import textFieldRC :: ReactComponent TextFieldProps
