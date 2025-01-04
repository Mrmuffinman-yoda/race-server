#include "routes/f1_routes.hpp"
#include "models/Driver.hpp"
#include "models/Team.hpp"
#include <unordered_map>
#include <memory>
#include <pqxx/pqxx>
#include <string>
#include "db_config.hpp"

// In-memory storage for demonstration purposes
std::unordered_map<int, std::shared_ptr<Driver>> drivers;
std::unordered_map<int, std::shared_ptr<Team>> teams;

void setupRoutes(crow::SimpleApp& app) {
    // Handling URL parameters
    CROW_ROUTE(app, "/driver/<int>").methods("GET"_method)
    ([](const crow::request& req, crow::response& res, int driver_id) {
        crow::json::wvalue x;
        try {
            pqxx::connection conn(DBConfig::getConnectionString());
            pqxx::work txn(conn);
            pqxx::result r = txn.exec("SELECT d.id, d.name, t.name AS team_name, d.points FROM drivers d JOIN teams t ON d.team_id = t.id WHERE d.id = " + txn.quote(driver_id));
            if (r.size() == 1) {
                x["driver_id"] = r[0]["id"].as<int>();
                x["name"] = r[0]["name"].as<std::string>();
                x["team"] = r[0]["team_name"].as<std::string>();
                x["points"] = r[0]["points"].as<int>();
            } else {
                x["error"] = "Driver not found.";
            }
        } catch (const std::exception &e) {
            x["error"] = e.what();
        }
        res.write(x.dump());
        res.end();
    });
}