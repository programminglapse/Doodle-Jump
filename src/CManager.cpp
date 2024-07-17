#include "CManager.h"

#include "CModuleTimer.h"
#include "CModuleWindow.h"
#include "CModuleInput.h"
#include "CModuleRenderer.h"
#include "CModuleObjectManager.h"

#include "SDL.h"
#include "SDL_ttf.h"

#include <iostream>

bool InitSDL();

void CManager::Play()
{
	if( !InitSDL() || TTF_Init() < 0 )
		return;

	InitModules();

	for( auto& module : mModules )
		if( !module->Init() )
			return;

	bool play = true;
	while( play )
	{
		for( auto& module : mModules )
			if( !module->PreUpdate() )
				play = false;
		for( auto& module : mModules )
			if( !module->Update() )
				play = false;
	}

	for( auto& module : mModules )
		if( !module->Clear() )
			return;

	SDL_Quit();
}

void CManager::InitModules()
{
	mModules.push_back( mModuleTimer = new CModuleTimer() );
	mModules.push_back( mModuleWindow = new CModuleWindow() );
	mModules.push_back( mModuleInput = new CModuleInput() );
	mModules.push_back( mModuleRenderer = new CModuleRenderer() );
	mModules.push_back( mModuleObjectManager = new CModuleObjectManager() );
}

bool InitSDL()
{
	if( SDL_Init( SDL_INIT_VIDEO ) < 0 )
	{
		printf( "SDL could not initialize! SDL_Error: %s\n", SDL_GetError() );
		return false;
	}
	return true;
}
