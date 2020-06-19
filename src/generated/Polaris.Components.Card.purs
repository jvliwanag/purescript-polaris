module Polaris.Components.Card
  ( ComplexAction
  , complexAction
  , DisableableAction
  , disableableAction
  , FunctionComponent
  , CardProps
  , card
  , cardRC
  , CardHeaderProps
  , cardHeader
  , cardHeaderRC
  , CardSectionProps
  , cardSection
  , cardSectionRC
  , CardSubsectionProps
  , cardSubsection
  , cardSubsectionRC
  ) where

import Prelude

import Effect
import Effect.Uncurried
import Foreign
import Literals
import React.Basic.Hooks
import Untagged.Coercible
import Untagged.Union

type ComplexAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "destructive" :: UndefinedOr (Boolean)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "icon" :: UndefinedOr ((String) |+| (FunctionComponent))
  , "id" :: UndefinedOr (String)
  , "loading" :: UndefinedOr (Boolean)
  , "target" :: UndefinedOr ((StringLit "ADMIN_PATH") |+| (StringLit "REMOTE") |+| (StringLit "APP"))
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

complexAction :: forall r. Coercible r ComplexAction => r -> ComplexAction
complexAction = coerce
type DisableableAction =
  { "accessibilityLabel" :: UndefinedOr (String)
  , "content" :: UndefinedOr (String)
  , "disabled" :: UndefinedOr (Boolean)
  , "external" :: UndefinedOr (Boolean)
  , "id" :: UndefinedOr (String)
  , "url" :: UndefinedOr (String)
  , "onAction" :: UndefinedOr (Effect (Unit))
  , "onMouseEnter" :: UndefinedOr (Effect (Unit))
  , "onTouchStart" :: UndefinedOr (Effect (Unit))
  }

disableableAction :: forall r. Coercible r DisableableAction => r -> DisableableAction
disableableAction = coerce
foreign import data FunctionComponent :: Type

type CardProps =
  { "actions" :: UndefinedOr (Array (DisableableAction))
  , "children" :: UndefinedOr (JSX)
  , "footerActionAlignment" :: UndefinedOr ((StringLit "right") |+| (StringLit "left"))
  , "primaryFooterAction" :: UndefinedOr (ComplexAction)
  , "secondaryFooterActions" :: UndefinedOr (Array (ComplexAction))
  , "secondaryFooterActionsDisclosureText" :: UndefinedOr (String)
  , "sectioned" :: UndefinedOr (Boolean)
  , "subdued" :: UndefinedOr (Boolean)
  , "title" :: UndefinedOr (JSX)
  }

card :: forall r. Coercible r CardProps => r -> JSX
card = element cardRC <<< coerce

foreign import cardRC :: ReactComponent CardProps

type CardHeaderProps =
  { "title" :: UndefinedOr (JSX)
  , "actions" :: UndefinedOr (Array (DisableableAction))
  , "children" :: UndefinedOr (JSX)
  }

cardHeader :: forall r. Coercible r CardHeaderProps => r -> JSX
cardHeader = element cardHeaderRC <<< coerce

foreign import cardHeaderRC :: ReactComponent CardHeaderProps

type CardSectionProps =
  { "title" :: UndefinedOr (JSX)
  , "children" :: UndefinedOr (JSX)
  , "subdued" :: UndefinedOr (Boolean)
  , "fullWidth" :: UndefinedOr (Boolean)
  , "actions" :: UndefinedOr (ComplexAction)
  }

cardSection :: forall r. Coercible r CardSectionProps => r -> JSX
cardSection = element cardSectionRC <<< coerce

foreign import cardSectionRC :: ReactComponent CardSectionProps

type CardSubsectionProps =
  { "children" :: UndefinedOr (JSX)
  }

cardSubsection :: forall r. Coercible r CardSubsectionProps => r -> JSX
cardSubsection = element cardSubsectionRC <<< coerce

foreign import cardSubsectionRC :: ReactComponent CardSubsectionProps
