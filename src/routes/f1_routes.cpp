#include <routes/f1_routes.hpp>
#include <models/Driver.hpp>
#include <models/Team.hpp>
#include <unordered_map>
#include <memory>

// In-memory storage for demonstration purposes
std::unordered_map<int, std::shared_ptr<Driver>> drivers;
std::unordered_map<int, std::shared_ptr<Team>> teams;

void setupRoutes(crow::SimpleApp& app) {
    // Initialize some sample data
    auto team = std::make_shared<Team>(1, "Mercedes");
    teams[1] = team;

    auto driver = std::make_shared<Driver>(44, "Lewis Hamilton", *team, 100);
    drivers[1] = driver;

    // Handling query parameters
    CROW_ROUTE(app, "/race_data").methods("GET"_method)
    ([](const crow::request& req, crow::response& res) {
        auto race_id = req.url_params.get("race_id");
        crow::json::wvalue x;
        if (race_id) {
            x["message"] = "This is a test response for race data.";
            x["race_id"] = race_id;
        } else {
            x["error"] = "race_id query parameter is missing.";
        }
        res.write(x.dump());
        res.end();
    });

    // Handling URL parameters
    CROW_ROUTE(app, "/driver/<int>").methods("GET"_method)
    ([](const crow::request& req, crow::response& res, int driver_id) {
        crow::json::wvalue x;
        auto it = drivers.find(driver_id);
        if (it != drivers.end()) {
            auto driver = it->second;
            x["driver_id"] = driver->getDriverId();
            x["name"] = driver->getName();
            x["team"] = driver->getTeam().getName();
            x["points"] = driver->getPoints();
        } else {
            x["error"] = "Driver not found.";
        }
        res.write(x.dump());
        res.end();
    });

    // Handling JSON body data
    CROW_ROUTE(app, "/submit_race_data").methods("POST"_method)
    ([](const crow::request& req, crow::response& res) {
        auto body = crow::json::load(req.body);
        crow::json::wvalue x;
        if (!body) {
            x["error"] = "Invalid JSON body.";
        } else {
            x["message"] = "Race data received.";
            x["data"] = body;
        }
        res.write(x.dump());
        res.end();
    });
}