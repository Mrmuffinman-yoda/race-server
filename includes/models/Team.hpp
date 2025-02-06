#ifndef TEAM_HPP
#define TEAM_HPP

#include <iostream>
#include <string>
#include <vector>
// #include <models/Driver.hpp>

class Team {
  public:
    // Constructor
    Team(int team_id, const std::string& name);

    // Getters
    int getId() const;
    std::string getName() const;
    // std::vector<Team> getDrivers() const; add this later
    // Overload the << operator
    friend std::ostream& operator<<(std::ostream& os, const Team& team);

  private:
    int team_id;
    std::string name;
};

#endif // TEAM_HPP