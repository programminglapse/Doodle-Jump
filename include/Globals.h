#define SCREEN_WIDTH 500
#define SCREEN_HEIGHT 900

const static int PLATFORM_WIDTH = 60;
const static int PLATFORM_HEIGHT = 17;
const static float MOVING_PLATFORM_PROB = 0.2f;
const static float IMPULSE_PLATFORM_PROB = 0.1f;

#include <random>

static int GetRandomNumberBetween( int aMin, int aMax )
{
	return rand()%((aMax - aMin) + 1) + aMin;
}
