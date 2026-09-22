import Quickshell
import "components"

ShellRoot {
    Variants {
        model: Quickshell.screens

        Bar {
            screen: Quickshell.screens.length > 0 ? Quickshell.screens[0] : null
        }
    }
}
