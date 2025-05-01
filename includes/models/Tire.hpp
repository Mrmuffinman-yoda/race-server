#ifndef TIRE_HPP
#define TIRE_HPP

#include <string>


class Tire{
    private:
        std::string tire_type_id;
        float max_pressure;
        float min_pressure;
        bool is_wet;
        int tire_id;
        std::string color;
        int psi;
        int recommended_psi;
        int age;
        int degredation;
        float coefficientOfFriction;
        bool wet;
    public:
        Tire(std::string tire_type_id, float max_pressure, float min_pressure);
        Tire(int tire_id, std::string color, int psi, int recommended_psi, bool wet, int age, int degredation, float coefficientOfFriction);
        std::string getTireTypeId() const;
        float getMaxPressure() const;
        float getMinPressure() const;
        int getDurability() const;
        std::string getColor() const;
        int getPsi() const;
        bool getWet() const;
        bool isUsed() const;
        int getAge() const;
};

#endif // TIRE_HPP
