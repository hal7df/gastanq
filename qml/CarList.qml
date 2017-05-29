import QtQuick 2.7
import QtQuick.Controls 2.1
import QtQuick.Controls.Material 2.1
import QtQuick.Window 2.0
import "qrc:/display.js" as Pixels

Item {
    anchors.fill: parent

    Component.onCompleted: console.log(parent)

    ListModel {
        id: staticCarModel

        ListElement {
            name: "Focus"
            year: "2012"
            make: "Ford"
            model: "Focus"
        }
    }

    ListView {
        anchors.fill: parent
        model: staticCarModel
        boundsBehavior: Flickable.StopAtBounds

        header: Item { height: Pixels.px(Screen, 8) }

        delegate: Rectangle {
            id: listDelegate
            anchors {
                left: parent.left
                right: parent.right
            }

            height: Pixels.px(Screen, 72)
            color: "#00000000"

            states: [
                State {
                    name: "pressed"; when: delegateTouch.pressed
                    PropertyChanges { target: listDelegate; color: "#66999999" }
                }
            ]

            transitions: [
                Transition {
                    from: ""; to: "pressed"; reversible: true
                    ColorAnimation { easing.type: Easing.InOutCubic; duration: 125 }
                }

            ]

            Label {
                text: name

                anchors {
                  left: parent.left
                  right: parent.right
                  top: parent.top
                  leftMargin: Pixels.px(Screen, 16)
                  rightMargin: Pixels.px(Screen, 16)
                  topMargin: Pixels.px(Screen, 18)
                }

                font.pixelSize: Pixels.px(Screen, 16)
            }

            Label {
                text: year + ' ' + make + ' ' + model

                anchors {
                    left: parent.left
                    right: parent.right
                    bottom: parent.bottom
                    leftMargin: Pixels.px(Screen, 16)
                    rightMargin: Pixels.px(Screen, 16)
                    bottomMargin: Pixels.px(Screen, 18)
                }

                color: Material.color(Material.Grey)

                font.pixelSize: Pixels.px(Screen, 14)
            }

            MouseArea {
                id: delegateTouch
                anchors.fill: parent
            }
        }
    }

    FloatingActionButton {
        id: newCarFab

        anchors {
            bottom: parent.bottom
            right: parent.right
            bottomMargin: Pixels.px(Screen, 16)
            rightMargin: Pixels.px(Screen, 16)
        }

        iconName: "add"
    }
}
