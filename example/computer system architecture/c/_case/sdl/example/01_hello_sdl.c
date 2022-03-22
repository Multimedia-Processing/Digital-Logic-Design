// from -- https://www.geeksforgeeks.org/sdl-library-in-c-c-with-examples/
#include "my_sdl.h"

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
	while (1)
		;

	return 0;
}
