module Polaris.Components.IndexTable
  ( IndexTableBaseProps'
  , IndexTableBaseProps
  , IndexTableProps
  , indexTable
  , indexTableRC
  , IndexTableRowBaseProps'
  , IndexTableRowBaseProps
  , IndexTableRowProps
  , indexTableRow
  , indexTableRowRC
  , IndexTableCellBaseProps'
  , IndexTableCellBaseProps
  , IndexTableCellProps
  , indexTableCell
  , indexTableCellRC
  , ActionListItemDescriptor
  , ActionListSection
  , actionListSection
  , DisableableActionBadgeAction
  , NonEmptyArray
  , Range
  , SelectionType
  ) where

import Prelude
import Effect.Uncurried (EffectFn3)
import Literals (StringLit)
import Polaris.Internal (elemWithChildren, PropsWithChildren)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (cast, class Castable)
import Untagged.Union (UndefinedOr, type (|+|))

type IndexTableBaseProps'
  = ( bulkActions
      :: UndefinedOr
         (Array (ActionListSection |+| DisableableActionBadgeAction))
    , condensed :: UndefinedOr Boolean
    , emptyState :: UndefinedOr JSX
    , hasMoreItems :: UndefinedOr Boolean
    , headings :: NonEmptyArray
    , itemCount :: Number
    , loading :: UndefinedOr Boolean
    , promotedBulkActions :: UndefinedOr (Array DisableableActionBadgeAction)
    , resourceName
      :: UndefinedOr
         { plural :: UndefinedOr String, singular :: UndefinedOr String }
    , selectable :: UndefinedOr Boolean
    , selectedItemsCount :: StringLit "All" |+| Number
    , sort :: UndefinedOr JSX
    , onSelectionChange
      :: EffectFn3
         SelectionType
         Boolean
         (String |+| Range)
         Unit
    )

type IndexTableBaseProps = { | IndexTableBaseProps' }

type IndexTableProps = PropsWithChildren IndexTableBaseProps'

indexTable :: forall r. Castable r IndexTableBaseProps => r -> Array JSX -> JSX
indexTable = elemWithChildren indexTableRC

foreign import indexTableRC :: ReactComponent IndexTableProps

type IndexTableRowBaseProps'
  = ( id :: UndefinedOr String
    , selected :: UndefinedOr Boolean
    , position :: UndefinedOr Number
    , subdued :: UndefinedOr Boolean
    )

type IndexTableRowBaseProps = { | IndexTableRowBaseProps' }

type IndexTableRowProps = PropsWithChildren IndexTableRowBaseProps'

indexTableRow
  :: forall r
   . Castable
  r
  IndexTableRowBaseProps
  => r
  -> Array JSX
  -> JSX
indexTableRow = elemWithChildren indexTableRowRC

foreign import indexTableRowRC :: ReactComponent IndexTableRowProps

type IndexTableCellBaseProps' = ( flush :: UndefinedOr Boolean )

type IndexTableCellBaseProps = { | IndexTableCellBaseProps' }

type IndexTableCellProps = PropsWithChildren IndexTableCellBaseProps'

indexTableCell
  :: forall r
   . Castable
  r
  IndexTableCellBaseProps
  => r
  -> Array JSX
  -> JSX
indexTableCell = elemWithChildren indexTableCellRC

foreign import indexTableCellRC :: ReactComponent IndexTableCellProps

foreign import data ActionListItemDescriptor :: Type

type ActionListSection
  = { items :: Array ActionListItemDescriptor, title :: UndefinedOr String }

actionListSection
  :: forall r
   . Castable
  r
  ActionListSection
  => r
  -> ActionListSection
actionListSection = cast

foreign import data DisableableActionBadgeAction :: Type

foreign import data NonEmptyArray :: Type

foreign import data Range :: Type

foreign import data SelectionType :: Type
