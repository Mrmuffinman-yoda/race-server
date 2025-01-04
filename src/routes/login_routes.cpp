#include "routes/login_routes.hpp"

void setupLoginRoutes(crow::SimpleApp& app) {
    CROW_ROUTE(app, "/login").methods("GET"_method)
    ([](const crow::request& req, crow::response& res) {
        std::string username = req.url_params.get("username");
        std::string password = req.url_params.get("password");
        crow::json::wvalue x;
        if (username == "admin" && password == "8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918") {
            x["message"] = "Login successful.";
            x["error"] = NULL;
        } else {
            x["error"] = "User information is incorrect";
        }
        res.write(x.dump());
        res.end();
    });
}