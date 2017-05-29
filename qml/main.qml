import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Layouts 1.0
import QtQuick.Window 2.0
import "qrc:/display.js" as Pixels

ApplicationWindow {
    id: root
    visible: true
    title: "GasTanq"

    header: ToolBar {
        height: Screen.primaryOrientation === Qt.LandscapeOrientation ? Pixels.px(Screen, 48) : Pixels.px(Screen, 56)
        Label {
            text: "GasTanq"
            anchors {
                left: parent.left
                verticalCenter: parent.verticalCenter
                leftMargin: Pixels.px(Screen, 72)
            }
            font.pixelSize: Pixels.px(Screen, 20)
        }
    }
    
    Loader {
        id: mainContent
        anchors.fill: parent
        source: "qrc:/CarList.qml"
    }
}
