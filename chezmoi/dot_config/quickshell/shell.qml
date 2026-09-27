import Quickshell
import "Components"

ShellRoot {
  Variants {
    model: Quickshell.screens

    Bar {
      screen: Quickshell.screens.length > 0 ? Quickshell.screens[0] : null
    }
  }
}
