import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0
import "qrc:/display.js" as Pixels

RoundButton {
    id: fab
    height: Pixels.px(Screen, 64)
    width: height

    property string iconName

    contentItem: Image {
        anchors {
            horizontalCenter: fab.horizontalCenter
            verticalCenter: fab.verticalCenter
        }

        height: Pixels.px(Screen, 14)
        width: height
        smooth: true
        source: Pixels.getIcon(this, fab.iconName)

    }

    background: Rectangle {
        anchors.fill: parent
        radius: width/2
        color: fab.down ? Qt.darker(Material.accent, 1.5) : Material.accent

        Behavior on color {
            ColorAnimation { easing.type: Easing.InOutCubic; duration: 100 }
        }
    }

    layer.enabled: true
    layer.effect: DropShadow {
        verticalOffset: fab.down ? Pixels.px(Screen, 6) : Pixels.px(Screen, 3)
        color: /*fab.down ? "#42000000" :*/ "#3f000000"
        source: fab
        radius: fab.down ? 40 : 20
        //spread: fab.down ? 0.25 : 0

        Behavior on verticalOffset {
            PropertyAnimation { easing.type: Easing.InOutCubic; duration: 100 }
        }

        Behavior on radius {
            PropertyAnimation { easing.type: Easing.InOutCubic; duration: 100 }
        }

        Behavior on color {
            ColorAnimation { easing.type: Easing.InOutCubic; duration: 100 }
        }

        Behavior on spread {
            PropertyAnimation { easing.type: Easing.InOutCubic; duration: 100 }
        }
    }
}
