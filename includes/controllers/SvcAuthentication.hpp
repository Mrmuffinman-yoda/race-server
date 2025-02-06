#ifndef SVCAUTHENTICATION_HPP
#define SVCAUTHENTICATION_HPP

#include <string>

class SvcAuthentication {
  public:
    SvcAuthentication(const std::string& username,
                      const std::string& hashed_password);
    ~SvcAuthentication(void);
    void getLoginDetails(std::string& username, std::string& password) const;
    bool verifyLoginDetails() const;
    std::string generateSessionToken() const;
    static bool isValidSessionToken(const std::string& token);

  private:
    std::string m_username;
    std::string m_password;
};

#endif // SVCAUTHENTICATION_HPP