/**
 * 08 - Geometry rendering
 *
 */

#include "my_sdl.h"

#define SCREEN_WIDTH 640
#define SCREEN_HEIGHT 480

bool init();
bool loadMedia();
void close();

// the window we'll be rendering to
SDL_Window* gWindow = NULL;

// the window's renderer
SDL_Renderer* gRenderer = NULL;

bool init() {
  // initialize sdl
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
    return false;
  }

  // create window
  gWindow = SDL_CreateWindow("08 - Geometry Rendering", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
  if (gWindow == NULL) {
    printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
    return false;
  }

  // create renderer for window
  // as we use SDL_Texture, now we need to use renderer to render stuff
  gRenderer = SDL_CreateRenderer(gWindow, -1, SDL_RENDERER_ACCELERATED);
  if (gRenderer == NULL)
  {
    printf("SDL could not create renderer! SDL_Error: %s\n", SDL_GetError());
    return false;
  }

  return true;
}

bool loadMedia()
{
  // we need no additional assets to render
  return true;
}

void close()
{
  // destroy window
  SDL_DestroyRenderer(gRenderer);
  SDL_DestroyWindow(gWindow);
  gWindow = NULL;
  gRenderer = NULL;

  // quit sdl subsystem
  SDL_Quit();
}

int main(int argc, char* args[])
{
  // start up SDL and create window
  if (!init())
  {
    printf("Failed to initialize\n");
  }	
  else
  {
    // load media
    if (!loadMedia())
    {
      printf("Failed to load media!\n");
    }
    else
    {
      // main loop flag
      bool quit = false;

      // event handler
      SDL_Event e;

      // while application is running
      while (!quit)
      {
        // handle events on queue
        // if it's 0, then it has no pending event
        // we keep polling all event in each game loop until there is no more pending one left
        while (SDL_PollEvent(&e) != 0)
        {
          // user requests quit
          if (e.type == SDL_QUIT)
          {
            quit = true;
          }
          // user presses a key
          else if (e.type == SDL_KEYDOWN)
          {
            switch (e.key.keysym.sym)
            {
              case SDLK_ESCAPE:
                quit = true;
                break;
            }
          }
        }

        // clear screen
        SDL_SetRenderDrawColor(gRenderer, 0xFF, 0xFF, 0xFF, 0xFF);
        SDL_RenderClear(gRenderer);

        // render the filled quad
        SDL_Rect fillRect = { SCREEN_WIDTH / 4, SCREEN_HEIGHT / 4, SCREEN_WIDTH / 2, SCREEN_HEIGHT / 2 };
        SDL_SetRenderDrawColor(gRenderer, 0xFF, 0x00, 0x00, 0xFF);
        SDL_RenderFillRect(gRenderer, &fillRect);

        // render green outlined quad
        SDL_Rect outlineRect = { SCREEN_WIDTH / 6, SCREEN_HEIGHT / 6, SCREEN_WIDTH * 2/3, SCREEN_HEIGHT * 2/3 };
        SDL_SetRenderDrawColor(gRenderer, 0x00, 0xFF, 0x00, 0xFF);
        SDL_RenderDrawRect(gRenderer, &outlineRect);

        // render blue horizontal line
        SDL_SetRenderDrawColor(gRenderer, 0x00, 0x00, 0xFF, 0xFF);
        SDL_RenderDrawLine(gRenderer, 0, SCREEN_HEIGHT / 2, SCREEN_WIDTH, SCREEN_HEIGHT / 2);

        // render vertical line of yellow dots
        SDL_SetRenderDrawColor(gRenderer, 0xFF, 0xFF, 0x00, 0xFF);
        for (int i=0; i < SCREEN_HEIGHT; i += 4)
        {
          SDL_RenderDrawPoint(gRenderer, SCREEN_WIDTH / 2, i);
        }

        // update screen
        SDL_RenderPresent(gRenderer);
      }
    }
  }

  // free resource and close SDL
  close();

  return 0;
}