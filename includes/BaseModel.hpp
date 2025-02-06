#ifndef BASEMODEL_HPP
#define BASEMODEL_HPP

#include <pqxx/pqxx>
#include <string>
#include <vector>

class BaseModel {
  public:
    virtual ~BaseModel()      = default;
    virtual int getId() const = 0;

    static pqxx::result executeQuery(const std::string& query);
    static pqxx::result executeQuery(const std::string& query,
                                     const std::vector<std::string>& params);
};

#endif // BASEMODEL_HPP