import QtQuick 2.11

Item {
    id: statusBar

    Text {
        id: km_txt

        anchors.left: statusBar.left

        text: "42 Km"
        color: "white"
    }
    Text {
        id: temp_txt

        anchors.left: km_txt.right
        anchors.leftMargin: 100

        text: "23°C"
        color: "white"
    }
    Text {
        id: date_txt

        anchors.right: time_txt.left
        anchors.rightMargin: 100

        text: "16 Nov 2020"
        color: "white"
    }
    Text {
        id: time_txt

        anchors.right: statusBar.right

        text: "20:30"
        color: "white"
    }
}
