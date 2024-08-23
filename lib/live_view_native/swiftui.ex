defmodule LiveViewNative.SwiftUI do
  @moduledoc false

  use LiveViewNative,
    format: :swiftui,
    component: LiveViewNative.SwiftUI.Component,
    module_suffix: :SwiftUI,
    template_engine: LiveViewNative.Engine,
    stylesheet_rules_parser: LiveViewNative.SwiftUI.RulesParser
end
