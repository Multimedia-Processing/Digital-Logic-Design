/*This source code copyrighted by Lazy Foo' Productions (2004-2020)
and may not be redistributed without written permission.*/
/**
 * 05 - Optimized Surface Loading and Soft Stretching
 *
 */

#include "my_sdl.h"

#define SCREEN_WIDTH 640
#define SCREEN_HEIGHT 480

bool init();
bool loadMedia();
void close();

// load individual image
SDL_Surface* loadSurface(const char* const path);

// the window we'll be rendering to
SDL_Window* gWindow = NULL;

// the surface contained by the window
SDL_Surface* gScreenSurface = NULL;

// stretching image
SDL_Surface* gStretchingImage = NULL;

bool init() {
  // initialize flag
  bool success = true;

  // initialize sdl
  if (SDL_Init(SDL_INIT_VIDEO) < 0) {
    printf("SDL could not initialize! SDL_Error: %s\n", SDL_GetError());
    success = false;
  }
  else {
    // create window
    gWindow = SDL_CreateWindow("05 - Optimized Surface Loading and Soft Stretching", SDL_WINDOWPOS_UNDEFINED, SDL_WINDOWPOS_UNDEFINED, SCREEN_WIDTH, SCREEN_HEIGHT, SDL_WINDOW_SHOWN);
    if (gWindow == NULL) {
      printf("Window could not be created! SDL_Error: %s\n", SDL_GetError());
      success = false;
    }
    else {
      // Get window surface
      gScreenSurface = SDL_GetWindowSurface(gWindow);
    }
  }
  return success;
}

SDL_Surface* loadSurface(const char* const path)
{
  // result surface to return
  SDL_Surface* optimizedSurface = NULL;

  // load image at specified path
  SDL_Surface* loadedSurface = SDL_LoadBMP((const char*)path);
  if (loadedSurface == NULL)
  {
    printf("Unable to load image %s! SDL error: %s\n", path, SDL_GetError());
  }
  else
  {
    // convert surface to screen format
    optimizedSurface = SDL_ConvertSurface(loadedSurface, gScreenSurface->format, 0);
    if (optimizedSurface == NULL)
    {
      printf("Unable to optimize image %s! SDL Error: %s\n", path, SDL_GetError());
    }
    // now free original loaded surface
    // if success, we have a new copy of optimized surface
    // if fail, we still don't need it as we failed to convert to optimized surface
    SDL_FreeSurface(loadedSurface);
  }
  return optimizedSurface;
}

bool loadMedia()
{
  // load stretching image
  gStretchingImage = loadSurface("img/stretch.bmp");
  if (gStretchingImage == NULL)
  {
    printf("Failed to load stretching image!\n");
    return false;
  }

  return true;
}

void close()
{
  // deallocate surface
  SDL_FreeSurface(gStretchingImage);
  gStretchingImage = NULL;

  // destroy window
  SDL_DestroyWindow(gWindow);
  gWindow = NULL;

  // this will be taken care of by SDL, but we set it to NULL as well anyway
  gScreenSurface = NULL;

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

        // create a target rect to blit surface onto
        SDL_Rect stretchRect;
        stretchRect.x = 0;
        stretchRect.y = 0;
        stretchRect.w = gScreenSurface->w;
        stretchRect.h = gScreenSurface->h;
        // apply the image
        SDL_BlitScaled(gStretchingImage, NULL, gScreenSurface, &stretchRect);
        // update the surface
        SDL_UpdateWindowSurface(gWindow);
      }
    }
  }

  // free resource and close SDL
  close();

  return 0;
}