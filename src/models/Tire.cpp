#include "models/Tire.hpp"
#include <string>
#include "models/c_Tire.hpp"

// Base
float Tire::getMaxPressure() const {
    return max_pressure;
}

float Tire::getMinPressure() const {
    return min_pressure;
}

std::string Tire::getTireTypeId() const {
    return tire_type_id;
}

Tire::Tire(std::string tire_type_id, float max_pressure, float min_pressure)
    : tire_type_id(tire_type_id)
    , max_pressure(max_pressure)
    , min_pressure(min_pressure)
    , is_wet(false) {
}

bool Tire::isWet() const {
    return is_wet;
}

// Current
c_Tire::c_Tire(int tire_id, Tire tire, int age, float fl_tire_tmp,
               float fr_tire_tmp, float rl_tire_tmp, float rr_tire_tmp,
               float fl_tire_pressure, float fr_tire_pressure,
               float rl_tire_pressure, float rr_tire_pressure)
    : tire_id(tire_id)
    , tire(tire)
    , age(age)
    , fl_tire_tmp(fl_tire_tmp)
    , fr_tire_tmp(fr_tire_tmp)
    , rl_tire_tmp(rl_tire_tmp)
    , rr_tire_tmp(rr_tire_tmp)
    , fl_tire_pressure(fl_tire_pressure)
    , fr_tire_pressure(fr_tire_pressure)
    , rl_tire_pressure(rl_tire_pressure)
    , rr_tire_pressure(rr_tire_pressure) {
}

int c_Tire::getTireId() const {
    return tire_id;
}

Tire c_Tire::getTire() const {
    return tire;
}

int c_Tire::getAge() const {
    return age;
}

std::vector<float> c_Tire::getTireTemps() const {
    return {fl_tire_tmp, fr_tire_tmp, rl_tire_tmp, rr_tire_tmp};
}

std::vector<float> c_Tire::getTirePressures() const {
    return {fl_tire_pressure, fr_tire_pressure, rl_tire_pressure,
            rr_tire_pressure};
}