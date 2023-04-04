import QtQuick 2.0

Item {
    id:tachimetro

    Image {
        id: contagiriBack
        source: "images/contagiri_back.png"
        anchors.centerIn: tachimetro
    }

    Pie{
        id:indicator_velocity
        anchors.centerIn: tachimetro

        sweepAngle: control_unit.speed + 1

        color: "blue"

        width: contagiriBack.width
        height: contagiriBack.height
    }

    Pie{
        id:indicator_energy
        anchors.centerIn: tachimetro

        startAngle: 0
        sweepAngle: -control_unit.energy

        color: "yellow"

        width: contagiriBack.width
        height: contagiriBack.height
    }

    Image {
        id: contagiriTop
        source: "images/contagiri_top.png"
        anchors.centerIn: tachimetro
    }

    Image {
        id: centrale
        source: "images/centrale.png"
        anchors.centerIn: tachimetro
    }

    Image {
        id: ghieraNumeri
        source: "images/ghiera+numeri.png"
        anchors.centerIn: tachimetro
    }

    Cruise{
        id:cruise
        anchors.centerIn: tachimetro
    }



}
