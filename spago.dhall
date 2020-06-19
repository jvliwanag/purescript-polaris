{ name = "polaris"
, dependencies =
  [ "console"
  , "effect"
  , "literal"
  , "oneof"
  , "react-basic-hooks"
  , "psci-support"
  ]
, packages = ../../packages.dhall
, sources = [ "src/**/*.purs", "test/**/*.purs" ]
}
