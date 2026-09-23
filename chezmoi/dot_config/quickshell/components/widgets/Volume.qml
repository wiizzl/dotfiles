import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import "../../core"

RowLayout {
    spacing: 0
    property int volumeLevel: 0

    Process {
        id: volProc
        command: ["wpctl", "get-volume", "@DEFAULT_AUDIO_SINK@"]
        stdout: SplitParser {
            onRead: data => {
                if (!data) {
                    return;
                }

                const match = data.match(/Volume:\s*([\d.]+)/);
                if (match) {
                    volumeLevel = Math.round(parseFloat(match[1]) * 100);
                }
            }
        }
    }

    Timer {
        interval: 300
        running: true
        repeat: true
        onTriggered: volProc.running = true
    }

    Text {
        text: "Vol: " + volumeLevel + "%"
        color: Theme.purple
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily
        font.bold: true
        Layout.rightMargin: 8
    }
}
