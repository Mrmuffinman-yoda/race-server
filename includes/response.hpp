#ifndef CUSTOM_RESPONSE_HPP
#define CUSTOM_RESPONSE_HPP

#include "crow.h"

class GenericResponse : public crow::json::wvalue {
public:
    // Constructor
    GenericResponse(const std::string& status = "success",
                    int code = 200,
                    const std::string& message = "OK") {
        set_default_fields(status, code, message);
    }

    // Set default fields
    void set_default_fields(const std::string& status, int code, const std::string& message) {
        (*this)["status"] = status;
        (*this)["code"] = code;
        (*this)["message"] = message;
        (*this)["data"] = crow::json::wvalue();  // Empty object
        (*this)["errors"] = crow::json::wvalue(); // Empty object
        (*this)["meta"] = crow::json::wvalue();   // Empty object
    }

    // Set status
    GenericResponse& set_status(const std::string& status) {
        (*this)["status"] = status;
        return *this;
    }

    // Set code
    GenericResponse& set_code(int code) {
        (*this)["code"] = code;
        return *this;
    }

    // Set message
    GenericResponse& set_message(const std::string& message) {
        (*this)["message"] = message;
        return *this;
    }

    // Set data
    GenericResponse& set_data(crow::json::wvalue&& data) {
        (*this)["data"] = std::move(data);
        return *this;
    }

    // Set errors
    GenericResponse& set_errors(crow::json::wvalue&& errors) {
        (*this)["errors"] = std::move(errors);
        return *this;
    }

    // Set meta
    GenericResponse& set_meta(crow::json::wvalue&& meta) {
        (*this)["meta"] = std::move(meta);
        return *this;
    }
};

#endif // CUSTOM_RESPONSE_HPP