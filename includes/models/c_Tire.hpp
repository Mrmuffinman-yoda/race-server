#ifndef C_TIRE_HPP
#define C_TIRE_HPP

#include <string>
#include <vector>
#include "BaseModel.hpp"
#include "Tire.hpp"

class c_Tire : public BaseModel {
  public:
    c_Tire(int tire_id, Tire tire, int age, float fl_tire_tmp,
           float fr_tire_tmp, float rl_tire_tmp, float rr_tire_tmp,
           float fl_tire_pressure, float fr_tire_pressure,
           float rl_tire_pressure, float rr_tire_pressure);
    int getTireId() const;
    Tire getTire() const;
    int getAge() const;
    // return values should be in the order FL, FR, RL, RR
    std::vector<float> getTireTemps() const;
    std::vector<float> getTirePressures() const;

    static c_Tire getTireById(int tire_id);

  private:
    int tire_id; // Unique identifier for the set of tires
    Tire tire;
    int age; // Number of laps the tire has been used, 0 = new tire
    float fl_tire_tmp;
    float fr_tire_tmp;
    float rl_tire_tmp;
    float rr_tire_tmp;
    float fl_tire_pressure;
    float fr_tire_pressure;
    float rl_tire_pressure;
    float rr_tire_pressure;
};

#endif // C_TIRE_HPP
