#include <crow.h>
#include <routes/f1_routes.hpp>

int main() {
    crow::SimpleApp app;

    // Middleware can be added here

    // Setup routes
    setupRoutes(app);

    // Start the server
    app.port(18080).multithreaded().run();
    
    return 0;
}