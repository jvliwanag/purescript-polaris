module Polaris.Components.Stepper(StepperProps, stepper, stepperRC) where

import Polaris.Internal (elem)
import React.Basic.Hooks (JSX, ReactComponent)
import Untagged.Castable (class Castable)

type StepperProps = {}

stepper :: forall r. Castable r StepperProps => r -> JSX
stepper = elem stepperRC

foreign import stepperRC :: ReactComponent StepperProps
