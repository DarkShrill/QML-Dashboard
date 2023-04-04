#include "control_unit.h"
#include <QVariant>

ControlUnit::ControlUnit(QObject *parent) : QObject(parent)
{
    m_speed = 0;
    m_energy = 0;
    m_incr_energy = 0.4f;
    m_incr_speed = 0.3f;

    m_battery = 100;

    startTimer(16);
}

void ControlUnit::timerEvent(QTimerEvent *event) {
    Q_UNUSED(event)

    setProperty("speed", m_speed + m_incr_speed);
    if (m_speed > 100 || m_speed < 0) {
        m_incr_speed = -m_incr_speed;
    }

    setProperty("energy", m_energy + m_incr_energy);

    if(m_energy > 60 || m_energy < -50){
        m_incr_energy = -m_incr_energy;
    }


    setProperty("battery", m_battery * 0.999f);
}
