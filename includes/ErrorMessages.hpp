#ifndef ERROR_MESSAGES_HPP
#define ERROR_MESSAGES_HPP

#include <unordered_map>
#include <string>
#include <fstream>
#include <sstream>
#include <stdexcept>

// TODO, complete error handling class on server
class ErrorMessages {
public:
    static ErrorMessages& getInstance() {
        static ErrorMessages instance;
        return instance;
    }

    std::string get(const std::string& id) const {
        auto it = messages.find(id);
        if (it != messages.end()) {
            return it->second;
        } else {
            throw std::runtime_error("Error ID not found: " + id);
        }
    }

private:
    std::unordered_map<std::string, std::string> messages;

    ErrorMessages() {
        load("./ErrorMessages");
    }

        void load(const std::string& filename) {
        std::ifstream file(filename); // Open the file for reading
        std::string line; // Variable to store each line from the file
    
        // Read the file line by line
        while (std::getline(file, line)) {
            std::istringstream iss(line); // Create a string stream from the line
            std::string id, message; // Variables to store the ID and message
    
            // Split the line into ID and message using ':' as the delimiter
            if (std::getline(iss, id, ':') && std::getline(iss, message)) {
                messages[id] = message; // Store the ID and message in the map
            }
        }
    }

    // Delete copy constructor and assignment operator
    ErrorMessages(const ErrorMessages&) = delete;
    ErrorMessages& operator=(const ErrorMessages&) = delete;
};

#endif // ERROR_MESSAGES_HPP