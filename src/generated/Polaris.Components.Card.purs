module Polaris.Components.Card
  ( CardBaseProps'
  , CardBaseProps
  , CardProps
  , card
  , cardRC
  , CardHeaderBaseProps'
  , CardHeaderBaseProps
  , CardHeaderProps
  , cardHeader
  , cardHeaderRC
  , CardSectionBaseProps'
  , CardSectionBaseProps
  , CardSectionProps
  , cardSection
  , cardSectionRC
  , CardSubsectionBaseProps'
  , CardSubsectionBaseProps
  , CardSubsectionProps
  , cardSubsection
  , cardSubsectionRC
  , ComplexAction
  , complexAction
  , DisableableAction
  , disableableAction
  , ReactSfc
  ) where

import Prelude
import Effect (Effect)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type CardBaseProps'
  = ( actions :: UndefinedOr (Array DisableableAction)
    , footerActionAlignment
      :: UndefinedOr
         (StringLit "right" |+| StringLit "left")
    , primaryFooterAction :: UndefinedOr ComplexAction
    , secondaryFooterActions :: UndefinedOr (Array ComplexAction)
    , secondaryFooterActionsDisclosureText :: UndefinedOr String
    , sectioned :: UndefinedOr Boolean
    , subdued :: UndefinedOr Boolean
    , title :: UndefinedOr JSX
    )

type CardBaseProps = { | CardBaseProps' }

type CardProps = PropsWithChildren CardBaseProps'

card :: forall r. Castable r CardBaseProps => r -> Array JSX -> JSX
card = elemWithChildren cardRC

foreign import cardRC :: ReactComponent CardProps

type CardHeaderBaseProps'
  = ( title :: UndefinedOr JSX
    , actions :: UndefinedOr (Array DisableableAction)
    )

type CardHeaderBaseProps = { | CardHeaderBaseProps' }

type CardHeaderProps = PropsWithChildren CardHeaderBaseProps'

cardHeader :: forall r. Castable r CardHeaderBaseProps => r -> Array JSX -> JSX
cardHeader = elemWithChildren cardHeaderRC

foreign import cardHeaderRC :: ReactComponent CardHeaderProps

type CardSectionBaseProps'
  = ( title :: UndefinedOr JSX
    , subdued :: UndefinedOr Boolean
    , fullWidth :: UndefinedOr Boolean
    , actions :: UndefinedOr ComplexAction
    )

type CardSectionBaseProps = { | CardSectionBaseProps' }

type CardSectionProps = PropsWithChildren CardSectionBaseProps'

cardSection
  :: forall r
   . Castable
  r
  CardSectionBaseProps
  => r
  -> Array JSX
  -> JSX
cardSection = elemWithChildren cardSectionRC

foreign import cardSectionRC :: ReactComponent CardSectionProps

type CardSubsectionBaseProps' = ()

type CardSubsectionBaseProps = { | CardSubsectionBaseProps' }

type CardSubsectionProps = PropsWithChildren CardSubsectionBaseProps'

cardSubsection
  :: forall r
   . Castable
  r
  CardSubsectionBaseProps
  => r
  -> Array JSX
  -> JSX
cardSubsection = elemWithChildren cardSubsectionRC

foreign import cardSubsectionRC :: ReactComponent CardSubsectionProps

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

type DisableableAction
  = { accessibilityLabel :: UndefinedOr String
    , content :: UndefinedOr String
    , disabled :: UndefinedOr Boolean
    , external :: UndefinedOr Boolean
    , id :: UndefinedOr String
    , url :: UndefinedOr String
    , onAction :: UndefinedOr (Effect Unit)
    , onMouseEnter :: UndefinedOr (Effect Unit)
    , onTouchStart :: UndefinedOr (Effect Unit)
    }

disableableAction
  :: forall r
   . Castable
  r
  DisableableAction
  => r
  -> DisableableAction
disableableAction = cast

foreign import data ReactSfc :: Type
