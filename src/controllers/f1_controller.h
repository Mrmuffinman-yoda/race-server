#ifndef F1_CONTROLLER_H
#define F1_CONTROLLER_H

#include <crow.h>

class F1Controller {
public:
    void getRaceData(const crow::request& req, crow::response& res);
    void getDriverStandings(const crow::request& req, crow::response& res);
};

#endif // F1_CONTROLLER_H