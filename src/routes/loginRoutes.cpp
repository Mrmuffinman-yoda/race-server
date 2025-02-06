#include "routes/loginRoutes.hpp"
#include "models/Driver.hpp"
#include "models/Team.hpp"
#include "controllers/SvcAuthentication.hpp"
#include <unordered_map>
#include <memory>
#include <pqxx/pqxx>
#include <string>
#include "DBConfig.hpp"

void loginRoutes(crow::SimpleApp& app) {
    // Handling URL parameters
        CROW_ROUTE(app, "/driver").methods("POST"_method)
    ([](const crow::request& req, crow::response& res) {
        crow::json::wvalue x;
        try {
            auto body = crow::json::load(req.body);
            if (!body) {
                res.code = 400;
                x["error"] = "Invalid JSON";
                res.write(x.dump());
                res.end();
                return;
            }
    
            int driver_id = body["driver_id"].i();
            std::string session_id = body["sessionid"].s();
    
            pqxx::connection conn(DBConfig::getConnectionString());
            pqxx::work txn(conn);
    
            // check token to sessions table
            // token varchar PK
            // user_id FK
            // expires_at timestamp
            pqxx::result r = txn.exec("SELECT user_id FROM sessions WHERE token = " + txn.quote(session_id) + " AND expires_at > NOW()");
    
            if (r.size() != 1) {
                x["error"] = "Invalid session token.";
                res.code = 401;
                res.write(x.dump());
                res.end();
                return;
            }
            r = txn.exec("SELECT d.id, d.name, t.name AS team_name, d.points FROM drivers d JOIN teams t ON d.team_id = t.id WHERE d.id = " + txn.quote(driver_id));
            if (r.size() == 1) {
                x["driver_id"] = r[0]["id"].as<int>();
                x["name"] = r[0]["name"].as<std::string>();
                x["team"] = r[0]["team_name"].as<std::string>();
                x["points"] = r[0]["points"].as<int>();
            } else {
                x["error"] = "Driver not found.";
                res.code = 404;
            }
        } catch (const std::exception &e) {
            x["error"] = e.what();
        }
        res.write(x.dump());
        res.end();
    });

    // Login route
    CROW_ROUTE(app, "/login").methods("POST"_method)
    ([](const crow::request& req, crow::response& res) {
        auto body = crow::json::load(req.body);
        if (!body) {
            res.code = 400;
            res.write("Invalid JSON");
            res.end();
            return;
        }

        std::string username = body["username"].s();
        std::string hashed_password = body["password"].s();

        SvcAuthentication loginDetails(username, hashed_password);

        if (loginDetails.verifyLoginDetails()) {
            std::string token = loginDetails.generateSessionToken();
            if (!token.empty()) {
                crow::json::wvalue x;
                x["message"] = "Login successful";
                x["token"] = token;
                x["errors"] ="";
                res.write(x.dump());
            } else {
                res.code = 500;
                res.write("Failed to generate session token.");
            }
        } else {
            crow::json::wvalue x;
            x["message"] = "Invalid username or password.";
            x["errors"] = "";
            res.write(x.dump());
            res.code = 401;
        }
        res.end();
    });
}