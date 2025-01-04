#include "models/Team.hpp"

// Constructor
Team::Team(int team_id, const std::string& name)
    : team_id(team_id), name(name) {}

// Getters
int Team::getTeamId() const {
    return team_id;
}

std::string Team::getName() const {
    return name;
}

// Overload the << operator
std::ostream& operator<<(std::ostream& os, const Team& team) {
    os << "Team ID: " << team.team_id << ", Name: " << team.name;
    return os;
}