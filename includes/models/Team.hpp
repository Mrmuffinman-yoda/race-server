#ifndef TEAM_HPP
#define TEAM_HPP

#include <iostream>
#include <string>
#include <vector>
#include "BaseModel.hpp"
// #include <models/Driver.hpp>

class Team : public BaseModel {
  public:
    // Constructor
    Team(int team_id, const std::string& name);

    // Getters
    int getId() const override;
    std::string getName() const;
    std::vector<Team> getDrivers() const;
    // Overload the << operator
    friend std::ostream& operator<<(std::ostream& os, const Team& team);

    static Team getTeamById(int team_id);

  private:
    int team_id;
    std::string name;
};

#endif // TEAM_HPP