#include <crow.h>

#include <routes/coreRoutes.hpp>

void coreRoutes(crow::SimpleApp& app) {
  CROW_ROUTE(app, "/")([]() { return "Welcome to F1 Raceserver"; });

  CROW_ROUTE(app, "/alive")
      .methods("GET"_method)([](const crow::request& req, crow::response& res) {
        crow::json::wvalue response_body;
        response_body["data"]["status"] = "Alive";
        res.write(response_body.dump());
        res.end();
      });
}