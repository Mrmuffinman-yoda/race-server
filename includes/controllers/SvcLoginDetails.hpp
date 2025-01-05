#ifndef SVCLOGINDETAILS_HPP
#define SVCLOGINDETAILS_HPP

#include <string>

class SvcLoginDetails {
    public:
        SvcLoginDetails(const std::string& username, const std::string& hashed_password);
        ~SvcLoginDetails(void);
        void getLoginDetails(std::string& username, std::string& password) const;
        bool verifyLoginDetails() const;
        std::string generateSessionToken() const;
    private:
        std::string m_username;
        std::string m_password;
};

#endif // SVCLOGINDETAILS_HPP