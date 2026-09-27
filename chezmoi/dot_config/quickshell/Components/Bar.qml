import QtQuick
import QtQuick.Layouts
import Quickshell
import "../Core"
import "./widgets"

PanelWindow {
  anchors {
    top: true
    left: true
    right: false
    bottom: true
  }

  implicitWidth: 35

  Rectangle {
    anchors.fill: parent
    color: Theme.background

    ColumnLayout {
      anchors.fill: parent
      spacing: 0

      Item {
        implicitHeight: 12
      }

      Clock {
        Layout.alignment: Qt.AlignHCenter
      }

      Item {
        Layout.fillHeight: true
      }

      Workspaces {
        Layout.alignment: Qt.AlignHCenter
      }

      Item {
        Layout.fillHeight: true
      }

      // TODO: new widgets

      Item {
        implicitHeight: 12
      }
    }
  }
}
