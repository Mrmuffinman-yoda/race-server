#ifndef DRIVER_HPP
#define DRIVER_HPP

#include <string>
#include <ctime>
#include "Team.hpp"
#include "BaseModel.hpp"

class Driver : public BaseModel {
public:
    // Constructor
    Driver(int driver_id, const std::string& name, const Team& team, int points);

    // Getters
    std::string getName() const;
    Team getTeam() const;
    int getPoints() const;
    int getId() const override;
    // Setters
    void setPoints(int points);

    static Driver getDriverById(int driver_id);

private:
    std::string name;
    Team team;
    int points;
    int driver_id;
};

#endif // DRIVER_HPP