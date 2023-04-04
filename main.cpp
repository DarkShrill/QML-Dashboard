#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "QList"
#include "control_unit.h"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    ControlUnit control_unit;
    engine.rootContext()->setContextProperty("control_unit", &control_unit);

    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
