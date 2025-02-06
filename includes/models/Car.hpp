#ifndef CAR_HPP
#define CAR_HPP
#include <string>
#include "Team.hpp"

class Car {
  public:
    int getId() const;

  private:
    int car_id;
    std::string car_name;
    int team_id;
    int driver_id;
    float b_downforce;
    float b_drag_coefficient;
    int b_balance_den;
    int b_balance_num;
    float b_sus_stiff;
    float b_engine_HP;
    float b_fuel_load;
    float estimated_fuel_consumption;
};

#endif CAR_HPP