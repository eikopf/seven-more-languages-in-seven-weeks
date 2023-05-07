#include <string>
#include <vector>

template <typename Location>

typedef std::pair<double, double> BikeLocation;
typedef Trip<BikeLocation> BikeTrip;

class Trip {
  public:
  Location operator()(double);

  // ...
};
