#include <crow.h>
#include <routes/coreRoutes.hpp>
#include <routes/loginRoutes.hpp>

int main() {
    crow::SimpleApp app;

    // Middleware can be added here

    // Setup routes
    loginRoutes(app);
    coreRoutes(app);

    // Start the server
    app.port(18080).multithreaded().run();

    return 0;
}