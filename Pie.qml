import QtQuick 2.11
import QtQuick.Shapes 1.0

Shape {
    id: shape

    property alias startAngle: shape.rotation
    property alias sweepAngle: pathAngleArc.sweepAngle
    property color color: "blue"

    rotation: 120

    ShapePath {
        strokeColor: shape.color
        fillColor: shape.color

        // Starting point
        startX: shape.width / 2
        startY: shape.height / 2

        // First side of the pie
        PathLine {
            x: shape.width
            y: shape.height / 2
        }

        // Arc of the pie
        PathAngleArc {
            id: pathAngleArc
            startAngle: 0
            sweepAngle: 20
            radiusX: shape.width / 2
            radiusY: shape.height / 2
            centerX: shape.width / 2
            centerY: shape.height / 2
        }

        // Second side of the pie, back to start
        PathLine {
            x: shape.width / 2
            y: shape.height / 2
        }

    }
}
