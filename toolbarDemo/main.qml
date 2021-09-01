import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

import "./ExpandableBottomBar"

Window {
    id: root
    width: 400
    height: 200
    visible: true
    color: "#00000000"   // 透明，圆角处理
    flags: Qt.FramelessWindowHint   // 隐藏标题栏

    Rectangle {
        id: backgroud
        x: 10
        y: 10
        width: parent.width-20
        height: parent.height-20
        radius: 15
        color: parent.color
        anchors.fill: parent

        MouseArea {     // 鼠标可拖动
            anchors.fill: parent
            property real lastMouseX: 0
            property real lastMouseY: 0
            onPressed: {
                lastMouseX = mouseX
                lastMouseY = mouseY
            }
            onMouseXChanged: root.x += (mouseX - lastMouseX)
            onMouseYChanged: root.y += (mouseY - lastMouseY)
        }
    }

    NavigationBar {
        anchors {
            left: parent.left
            leftMargin: 50
            right: parent.right
            rightMargin: 50
            bottom: parent.bottom
            bottomMargin: 50
        }

        NavigationBarButton {
            text: "mainpage"
            icon.source: "../assets/home.png"
            palette {
                buttonText: "#969696"
                highlight: "#ffa07a"
                highlightedText: "#EE7CA4"
            }
            onCheckedChanged: {
                if (checked) {
                    backgroud.color = palette.highlight
                }
            }
        }

        NavigationBarButton {
            text: "Today"
            icon.source: "../assets/sun.png"
            palette {
                buttonText: "#969696"
                highlight: "#ffdab9"
                highlightedText: "#888888"
            }
            onCheckedChanged: {
                if (checked) {
                    backgroud.color = palette.highlight
                }
            }
        }

        NavigationBarButton {
            text: "Done"
            icon.source: "../assets/check.png"
            palette {
                buttonText: "#969696"
                highlight: "#fbe8e7"
                highlightedText: "#f08e8b"
            }
            onCheckedChanged: {
                if (checked) {
                    backgroud.color = palette.highlight
                }
            }
        }

        NavigationBarButton {
            text: "Settings"
            icon.source: "../assets/settings.png"
            palette {
                buttonText: "#969696"
                highlight: "#dcebfb"
                highlightedText: "#56a2ec"
            }
            onCheckedChanged: {
                if (checked) {
                    backgroud.color = palette.highlight
                }
            }
        }
    }
}
