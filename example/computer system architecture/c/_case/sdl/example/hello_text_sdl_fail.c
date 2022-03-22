// ref -- https://stackoverflow.com/questions/3009042/how-to-view-printf-output-in-a-win32-application-on-visual-studio-2010
#include "my_sdl.h"
#include <windows.h>

int main(int argc, char *argv[])
{

	// retutns zero on success else non-zero
	if (SDL_Init(SDL_INIT_EVERYTHING) != 0) {
		printf("error initializing SDL: %s\n", SDL_GetError());
	}
	SDL_Window* win = SDL_CreateWindow("GAME",
									SDL_WINDOWPOS_CENTERED,
									SDL_WINDOWPOS_CENTERED,
									800, 600, 0);

    printf("hello!");
    int number = 10;
    char str[256];
    sprintf_s(str, "It works! - number: %d \n", number);

    OutputDebugString(str);

	while (1)
		;

	return 0;
}
