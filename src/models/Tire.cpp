#include "models/Tire.hpp"
#include <string>


Tire::Tire(int tire_id, std::string color, int psi, int recommended_psi, bool wet, int age, int degredation, float coefficientOfFriction)
    : tire_id(tire_id), color(color), psi(psi), recommended_psi(recommended_psi), wet(wet), age(age), degredation(degredation), coefficientOfFriction(coefficientOfFriction) {}



int Tire::getDurability() const {
    return psi;
}

std::string Tire::getColor() const {
    return color;
}

int Tire::getPsi() const {
    return psi;
}

bool Tire::getWet() const {
    return wet;
}

// Returns the age of the tire,
// 0 = new tire
bool Tire::isUsed() const {
    return age != 0;
}

int Tire::getAge() const {
    return age;
}