import QtQuick
import QtQuick.Layouts
import Quickshell
import "../core"
import "./widgets"

PanelWindow {
    id: barWindow
    anchors {
        top: true
        left: true
        right: true
    }
    implicitHeight: 30
    color: Theme.bg
    margins {
        top: 0
        bottom: 0
        left: 0
        right: 0
    }

    Rectangle {
        anchors.fill: parent
        color: Theme.bg

        RowLayout {
            anchors.fill: parent
            spacing: 0

            Item {
                width: 8
            }

            Workspaces {}

            Item {
                Layout.fillWidth: true
            }

            SystemStats {}
            Separator {}

            Volume {}
            Separator {}

            Clock {}

            Item {
                width: 8
            }
        }
    }
}
