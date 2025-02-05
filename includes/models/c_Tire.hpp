#ifndef C_TIRE_HPP
#define C_TIRE_HPP

#include <string>


class c_Tire{
    private:
        int tire_id;                    // Unique identifier for the set of tires
        std::string color;              // Doesn't change during race, 
        int psi;                        // Initial pressure in the tire currently
        int recommended_psi;            // Recommended pressure for the tire
        bool wet;                       // If its wet tire or not
        int age;                        // Number of laps the tire has been used, 0 = new tire
        int degredation;                // Degredation of the tire, the amount of wear the tire takes per lap
        float coefficientOfFriction;    // Coefficient of friction of the tire
    public:
        c_Tire(int tire_id, std::string color, int psi, int recommended_psi, bool wet, int age, int degredation, float coefficientOfFriction);
        int getDurability() const;
        std::string getColor() const;
        int getPsi() const;
        bool getWet() const;
        bool isUsed() const;
        int getAge() const;
};

#endif // C_TIRE_HPP
