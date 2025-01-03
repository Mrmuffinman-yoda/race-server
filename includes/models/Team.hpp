#ifndef TEAM_HPP
#define TEAM_HPP

#include <string>
#include <iostream>

class Team {
public:
    // Constructor
    Team(int team_id, const std::string& name);

    // Getters
    int getTeamId() const;
    std::string getName() const;

    // Overload the << operator
    friend std::ostream& operator<<(std::ostream& os, const Team& team);

private:
    int team_id;
    std::string name;
};

#endif // TEAM_HPP