#ifndef C_MODULE_RENDERER
#define C_MODULE_RENDERER

#include "AModule.h"

class SDL_Renderer;

class CModuleRenderer : public AModule
{
public:
	CModuleRenderer();

	bool Init() override;
	bool PreUpdate() override;
	bool Update() override;
	bool Clear() override;

	SDL_Renderer* SDLRenderer();

private:
	SDL_Renderer* mSDLRenderer;
};

#endif // C_MODULE_WINDOW
