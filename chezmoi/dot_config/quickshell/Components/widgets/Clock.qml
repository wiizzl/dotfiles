import QtQuick
import "../../Core"

Text {
  id: clockText

  property var currentDate: new Date()

  text: Qt.formatDateTime(currentDate, "HH") + "\n" + Qt.formatDateTime(currentDate, "mm")
  color: Theme.foreground
  font {
    pixelSize: Theme.fontSize
    family: Theme.fontFamily
    bold: true
  }

  Timer {
    interval: 1000
    running: true
    repeat: true
    onTriggered: clockText.currentDate = new Date()
  }
}
