#ifndef DB_CONFIG_HPP
#define DB_CONFIG_HPP

#include <string>
#include <cstdlib>

class DBConfig {
public:
    static std::string getConnectionString() {
        // This info needs to be setup as environment variables
        std::string db_host = std::getenv("DATABASE_HOST");
        std::string db_port = std::getenv("DATABASE_PORT");
        std::string db_user = std::getenv("DATABASE_USER");
        std::string db_password = std::getenv("DATABASE_PASSWORD");
        std::string db_name = std::getenv("DATABASE_NAME");

        return "host=" + db_host + " port=" + db_port + " user=" + db_user + " password=" + db_password + " dbname=" + db_name;
    }
};

#endif // DB_CONFIG_HPP