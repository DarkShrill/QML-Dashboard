import QtQuick 2.11

Item {
    id: mainDashboard
    width: bck.width
    height: bck.height

    Image {
        id: bck

        anchors.centerIn: mainDashboard

        source: "images/background_empty.png"
    }

    StatusBar {
        anchors.left: bck.left
        anchors.leftMargin: 120
        anchors.right: bck.right
        anchors.rightMargin: 120
        anchors.bottom: bck.bottom
        height: 50
    }

    Tachimetro{
        id:tachimetro
        anchors.centerIn: mainDashboard

    }



}
