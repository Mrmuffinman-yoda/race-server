#ifndef TIRE_HPP
#define TIRE_HPP

#include <string>


class Tire{
    private:
        std::string tire_type_id;
        float max_pressure;
        float min_pressure;
        bool is_wet;
    public:
        Tire(std::string tire_type_id, float max_pressure, float min_pressure);
        std::string getTireTypeId() const;
        float getMaxPressure() const;
        float getMinPressure() const;
};

#endif // TIRE_HPP
