import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import "../../Core"

ColumnLayout {
  spacing: 2

  Repeater {
    model: 9

    Rectangle {
      Layout.preferredWidth: 30
      Layout.preferredHeight: 20
      color: "transparent"

      property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)

      Text {
        text: index + 1
        color: parent.isActive ? Theme.primary : Theme.muted
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily
        font.bold: true
        anchors.centerIn: parent
      }
    }
  }
}
