import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0
import "qrc:/display.js" as Pixels

ApplicationWindow {
    id: root
    visible: true
    width: 360
    height: 640
    title: qsTr("Hello World")

    header: ToolBar {
        height: Screen.primaryOrientation === Qt.LandscapeOrientation ? Pixels.dp(Screen, 48) : Pixels.dp(Screen, 56)
        Label {
            text: "GasTanq"
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: Pixels.dp(Screen, 72)
            }
            font.pixelSize: Pixels.dp(Screen, 18)
        }
    }
    
    Loader {
        id: mainContent
        anchors.fill: parent
    }
}
