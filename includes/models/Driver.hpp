#ifndef DRIVER_HPP
#define DRIVER_HPP

#include <string>
#include <ctime>
#include "Team.hpp"

class Driver {
public:
    // Constructor
    Driver(int driver_id, const std::string& name, const Team& team, int points);

    // Getters
    std::string getName() const;
    Team getTeam() const;
    int getPoints() const;
    int getDriverId() const;
    // Setters
    void setPoints(int points);

private:
    std::string name;
    Team team;
    int points;
    int driver_id;
};

#endif // DRIVER_HPP