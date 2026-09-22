import QtQuick
import QtQuick.Layouts
import Quickshell.Hyprland
import "../../core"

RowLayout {
    spacing: 0

    Repeater {
        model: 9

        Rectangle {
            Layout.preferredWidth: 20
            Layout.preferredHeight: 30
            color: "transparent"

            property var workspace: Hyprland.workspaces.values.find(ws => ws.id === index + 1) ?? null
            property bool isActive: Hyprland.focusedWorkspace?.id === (index + 1)
            property bool hasWindows: workspace !== null

            Text {
                text: index + 1
                color: parent.isActive ? Theme.cyan : (parent.hasWindows ? Theme.cyan : Theme.muted)
                font.pixelSize: Theme.fontSize
                font.family: Theme.fontFamily
                font.bold: true
                anchors.centerIn: parent
            }

            Rectangle {
                width: 20
                height: 3
                color: parent.isActive ? Theme.purple : "transparent"
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
            }

            MouseArea {
                anchors.fill: parent
                onClicked: Hyprland.dispatch("workspace " + (index + 1))
            }
        }
    }
}
