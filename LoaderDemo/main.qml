import QtQuick 2.12
import QtQuick.Window 2.12
import QtQml 2.12

Window {
    id: mainWindow
    visible: true
    width: 320
    height: 480
    title: qsTr("QML Loaders Demo")
    color: "#FDFAFB"

    Component.onCompleted: {
        if (QML_DEBUG) {
            QM.setWindow(mainWindow)
        }
    }

    Text {
        text: "Refresh"
        anchors {
            left: parent.left
            top: parent.top
        }
        font.pointSize: 13
        visible: QML_DEBUG

        MouseArea {
            anchors.fill: parent
            onClicked: {
                QM.reload();
            }
        }
    }

    DemoCardList {
        anchors {
            fill: parent
            margins: SH.dp(25)
        }
    }
}
