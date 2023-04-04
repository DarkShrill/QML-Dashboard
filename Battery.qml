import QtQuick 2.0
import QtGraphicalEffects 1.0

Item {
    id: battery

    property alias value : rect.width
    property alias color : rect.color

    width:170
    height:32

    Rectangle{
        id:filler

        anchors.fill: battery_mask

        color: "black"
        visible: false

        Rectangle {
            id:rect
            anchors.left: filler.left
            height: filler.height
        }

        Image {
            anchors.fill: parent
            source: "images/batteria_vuota.png"
        }
    }

    Image {
        id: battery_mask

        anchors.horizontalCenter: battery.horizontalCenter
        anchors.top: battery.top
        anchors.topMargin: 20

        source: "images/batteria_maschera.png"
        visible: false
    }

    OpacityMask {
        anchors.fill: filler

        source: filler
        maskSource: battery_mask
    }
}
