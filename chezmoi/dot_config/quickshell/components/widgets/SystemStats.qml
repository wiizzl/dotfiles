import QtQuick
import QtQuick.Layouts
import Quickshell.Io
import "../../core"

RowLayout {
    spacing: 0

    property int cpuUsage: 0
    property int memUsage: 0
    property int diskUsage: 0
    property var lastCpuIdle: 0
    property var lastCpuTotal: 0

    Process {
        id: cpuProc
        command: ["sh", "-c", "head -1 /proc/stat"]
        stdout: SplitParser {
            onRead: data => {
                if (!data) {
                    return;
                }

                const p = data.trim().split(/\s+/);
                const total = parseInt(p[1]) + parseInt(p[2]) + parseInt(p[3]) + parseInt(p[4]) + parseInt(p[5]) + parseInt(p[6]) + parseInt(p[7]);
                const idleTime = parseInt(p[4]) + parseInt(p[5]);

                if (lastCpuTotal > 0) {
                    const totalDiff = total - lastCpuTotal;

                    if (totalDiff > 0) {
                        cpuUsage = Math.round(100 * (totalDiff - (idleTime - lastCpuIdle)) / totalDiff);
                    }
                }

                lastCpuTotal = total;
                lastCpuIdle = idleTime;
            }
        }
    }

    Process {
        id: memProc
        command: ["sh", "-c", "free | grep Mem"]
        stdout: SplitParser {
            onRead: data => {
                if (data) {
                    const p = data.trim().split(/\s+/);
                    memUsage = Math.round(100 * (parseInt(p[2]) || 0) / (parseInt(p[1]) || 1));
                }
            }
        }
    }

    Process {
        id: diskProc
        command: ["sh", "-c", "df / | tail -1"]
        stdout: SplitParser {
            onRead: data => {
                if (data) {
                    diskUsage = parseInt((data.trim().split(/\s+/)[4] || "0%").replace('%', '')) || 0;
                }
            }
        }
    }

    Timer {
        interval: 2000
        running: true
        repeat: true
        onTriggered: {
            cpuProc.running = true;
            memProc.running = true;
            diskProc.running = true;
        }
    }

    Text {
        text: "CPU: " + cpuUsage + "%"
        color: Theme.yellow
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily
        font.bold: true
        Layout.rightMargin: 8
    }
    Separator {}
    Text {
        text: "Mem: " + memUsage + "%"
        color: Theme.cyan
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily
        font.bold: true
        Layout.rightMargin: 8
    }
    Separator {}
    Text {
        text: "Disk: " + diskUsage + "%"
        color: Theme.blue
        font.pixelSize: Theme.fontSize
        font.family: Theme.fontFamily
        font.bold: true
        Layout.rightMargin: 8
    }
}
