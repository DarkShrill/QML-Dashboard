#ifndef CONTROL_UNIT_H
#define CONTROL_UNIT_H

#include <QObject>

class ControlUnit : public QObject
{
    Q_OBJECT

    Q_PROPERTY(float speed MEMBER m_speed NOTIFY speedChanged)
    Q_PROPERTY(float energy MEMBER m_energy NOTIFY energyChanged)
    Q_PROPERTY(float battery MEMBER m_battery NOTIFY batteryChanged)

public:
    explicit ControlUnit(QObject *parent = nullptr);

    void timerEvent(QTimerEvent *event);

signals:
    void speedChanged(float speed);
    void batteryChanged(float battery);
    void energyChanged(float energy);

public slots:

private:
    float m_speed;
    float m_incr_speed;

    float m_battery;
    float m_incr_energy;

    float m_energy;

    bool speed_up = true;
};

#endif // ENGINE_H
