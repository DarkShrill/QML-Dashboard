import QtQuick 2.0

Item {
    id:cruiseControll

    property int speedValue: control_unit.speed
    property int battValue: control_unit.battery

    width:200
    height:200

    Text {
        id: km
        text: speedValue + "Km/h"

        color: "gray"

        font.pixelSize:40
        font.bold: true

        anchors.horizontalCenter: cruiseControll.horizontalCenter
        anchors.top: cruiseControll.top
        anchors.topMargin: 10

    }

    Battery{
        id: batteryValue
        value: battValue
        color: battValue > 20 ? "green" : "red"

        anchors.horizontalCenter: cruiseControll.horizontalCenter
        anchors.top: km.bottom
        anchors.topMargin: 10

    }

}
