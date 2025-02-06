#include "BaseModel.hpp"
#include "DBConfig.hpp"
#include <iostream>

pqxx::result BaseModel::executeQuery(const std::string& query) {
    try {
        pqxx::connection conn(DBConfig::getConnectionString());
        pqxx::work txn(conn);
        pqxx::result r = txn.exec(query);
        txn.commit();
        return r;
    } catch (const std::exception &e) {
        std::cerr << "Database error: " << e.what() << std::endl;
        throw;
    }
}

pqxx::result BaseModel::executeQuery(const std::string& query, const std::vector<std::string>& params) {
    try {
        pqxx::connection conn(DBConfig::getConnectionString());
        pqxx::work txn(conn);
        pqxx::result r = txn.exec_params(query, params);
        txn.commit();
        return r;
    } catch (const std::exception &e) {
        std::cerr << "Database error: " << e.what() << std::endl;
        throw;
    }
}