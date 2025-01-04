#include <string>

class Track{
public:
    // Constructor
    Track(int track_id, const std::string& name, int length, int laps, std::string location);

    // Getters
    int getTrackId() const;
    std::string getName() const;
    int getLength() const;
    int getLaps() const;
    std::string getLocation() const;

    // Setters
    void setLength(int length);
    void setLaps(int laps);
    void setLocation(std::string location);

    // Overload the << operator
    friend std::ostream& operator<<(std::ostream& os, const Track& track);

private:
    int track_id;                   // Unique identifier for the track
    std::string name;               // Name of the track
    int length;                     // Length of the track in meters
    int laps;                       // Number of laps in
    std::string location;
};