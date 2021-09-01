import QtQuick 2.12
import QtQuick.Window 2.12
// Local Import
import "./qml"

Window {
    id: mainWindow
    visible: true
    width: 400
    height: 600
    color: "#00000000"
    flags: Qt.FramelessWindowHint

    Card {
        id: card
//        anchors.centerIn: parent
        anchors.fill: parent
        width: mainWindow.width * 0.5
        height: mainWindow.height * 0.5
        imageSource: "qrc:/images/canada.jpg"
        latInfo: "NORTH 56"
        countryName: "CANADA"
        lngInfo: "WEST 106"
        caption: "A beautiful place to visit next time we decide to hangout"
    }
}
