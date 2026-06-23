#include <assert.h>
#include "../src/sensor.h"

int main() {

    assert(calculate_average(10, 20) == 15);
    assert(calculate_average(0, 0) == 0);
    assert(calculate_average(-10, 10) == 0);

    return 0;
}