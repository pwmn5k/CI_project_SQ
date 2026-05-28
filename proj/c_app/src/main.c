#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int main() {

    FILE *file = fopen("../data/sensor.csv", "w");

    if(file == NULL) {
        printf("Could not open file\n");
        return 1;
    }

    fprintf(file, "time,temp,poti\n");

    srand(time(NULL));

    for(int i = 0; i < 20; i++) {

        float temp = 20.0f + (rand() % 100) / 10.0f;
        int poti = rand() % 101;

        fprintf(file, "%d,%.2f,%d\n", i, temp, poti);
    }

    fclose(file);

    printf("Dummy sensor data written.\n");

    return 0;
}