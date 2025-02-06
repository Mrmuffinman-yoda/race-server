#include "controllers/SvcAuthentication.hpp"
#include <chrono>
#include <iostream>
#include <pqxx/pqxx>
#include <random>
#include "DBConfig.hpp"

SvcAuthentication::SvcAuthentication(const std::string& username,
                                     const std::string& hashed_password) {
    // Constructor implementation
    // Initialize username and password with the provided values
    m_username = username;
    m_password = hashed_password;
}

SvcAuthentication::~SvcAuthentication(void) {
    // Destructor implementation
    // Clean up resources if necessary
}

void SvcAuthentication::getLoginDetails(std::string& username,
                                        std::string& password) const {
    // Get the username and password
    username = m_username;
    password = m_password;
}

bool SvcAuthentication::verifyLoginDetails() const {
    try {
        pqxx::connection conn(DBConfig::getConnectionString());
        pqxx::work txn(conn);

        // Prepare the SQL statement
        std::string query = "SELECT COUNT(*) FROM users WHERE username = " +
                            txn.quote(m_username) +
                            " AND password = " + txn.quote(m_password);
        pqxx::result r = txn.exec(query);

        // Check if the credentials are valid
        if (r.size() == 1 && r[0][0].as<int>() > 0) { return true; }
    } catch (const std::exception& e) {
        std::cerr << "Database error: " << e.what() << std::endl;
    }

    return false;
}

std::string SvcAuthentication::generateSessionToken() const {
    // Generate a random session token
    std::random_device rd;
    std::mt19937 gen(rd());
    std::uniform_int_distribution<> dis(0, 15);
    std::string token;
    for (int i = 0; i < 32; ++i) { token += "0123456789abcdef"[dis(gen)]; }

    try {
        pqxx::connection conn(DBConfig::getConnectionString());
        pqxx::work txn(conn);

        // Get the user ID
        std::string query =
            "SELECT id FROM users WHERE username = " + txn.quote(m_username);
        pqxx::result r = txn.exec(query);
        if (r.size() != 1) { throw std::runtime_error("User not found"); }
        int user_id = r[0]["id"].as<int>();

        // Calculate the expiration time (e.g., 1 hour from now)
        auto now = std::chrono::system_clock::now();
        auto expires_at =
            std::chrono::system_clock::to_time_t(now + std::chrono::hours(1));

        // Insert the session token into the sessions table
        query = "INSERT INTO sessions (user_id, token, expires_at) VALUES (" +
                txn.quote(user_id) + ", " + txn.quote(token) +
                ", to_timestamp(" + txn.quote(std::to_string(expires_at)) +
                "))";
        txn.exec(query);
        txn.commit();
    } catch (const std::exception& e) {
        std::cerr << "Database error: " << e.what() << std::endl;
        return "";
    }

    return token;
}

bool SvcAuthentication::isValidSessionToken(const std::string& token) {
    try {
        pqxx::connection conn(DBConfig::getConnectionString());
        pqxx::work txn(conn);

        // Prepare the SQL statement
        std::string query =
            "SELECT COUNT(*) FROM sessions WHERE token = " + txn.quote(token) +
            " AND expires_at > NOW()";
        pqxx::result r = txn.exec(query);

        // Check if the token is valid
        if (r.size() == 1 && r[0][0].as<int>() > 0) { return true; }
    } catch (const std::exception& e) {
        std::cerr << "Database error: " << e.what() << std::endl;
    }

    return false;
}