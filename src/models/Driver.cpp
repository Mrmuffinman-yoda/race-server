#include <models/Driver.hpp>
#include <string>
#include <models/Team.hpp>

// Constructor
Driver::Driver(int id, const std::string& name, const Team& team, int points)
    : driver_id(id) ,name(name), team(team), points(points){}

// Getters
std::string Driver::getName() const {
    return name;
}

int Driver::getDriverId() const{
    return driver_id;
}

Team Driver::getTeam() const {
    return team;
}

int Driver::getPoints() const {
    return points;
}


// Setters


void Driver::setPoints(int points) {
    this->points = points;
}
