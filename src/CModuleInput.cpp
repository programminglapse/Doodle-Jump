#include "CModuleInput.h"

#include "CManager.h"
#include "CModuleObjectManager.h"
#include "CModuleTimer.h"

#include "SDL.h"

bool CModuleInput::Update()
{
	SDL_Event e;
	while( SDL_PollEvent( &e ) )
	{
		if( e.type == SDL_QUIT )
			return false;
		if( e.type == SDL_MOUSEBUTTONDOWN )
		{
			manager->mModuleObjectManager->SetGameState( PLAYING );
		}
	}

	if( manager->mModuleObjectManager->GetGameState() != PLAYING )
		return true;

	const Uint8* keystates = SDL_GetKeyboardState(NULL);

	if(keystates[SDL_SCANCODE_LEFT])
		manager->mModuleObjectManager->Player().Move( manager->mModuleTimer->GetDeltaTime(), false );
	if(keystates[SDL_SCANCODE_RIGHT])
		manager->mModuleObjectManager->Player().Move( manager->mModuleTimer->GetDeltaTime());
	if(keystates[SDL_SCANCODE_S])
		manager->mModuleObjectManager->Player().Shot();

	return true;
}
