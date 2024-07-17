#include "CModuleRenderer.h"

#include "CManager.h"
#include "CModuleWindow.h"
#include "CModuleObjectManager.h"

#include "SDL.h"

CModuleRenderer::CModuleRenderer() :
	mSDLRenderer( SDL_CreateRenderer( manager->mModuleWindow->SDLWindow(), -1, 0 ) )
{
}

bool CModuleRenderer::Init()
{
	return mSDLRenderer != nullptr;
}

bool CModuleRenderer::PreUpdate()
{
	SDL_RenderClear( mSDLRenderer );
	return true;
}

bool CModuleRenderer::Update()
{
	// Render background
	SDL_RenderCopy( mSDLRenderer, manager->mModuleObjectManager->Background().BackTexture().SDLTexture(), NULL, NULL );

	for( const auto& platform : manager->mModuleObjectManager->Background().GetPlatforms() )
	{
		const auto& platformRect = platform.mRect;
		const SDL_Rect platformPos = { platformRect.x, int(manager->mModuleObjectManager->GetCamera().GetRelativePosition( platformRect.y )), platformRect.w, platformRect.h };

		SDL_RenderCopy( mSDLRenderer, platform.mIsMoving ? manager->mModuleObjectManager->Background().MovingPlatformTexture().SDLTexture() :
				manager->mModuleObjectManager->Background().PlatformTexture().SDLTexture(), NULL, &platformPos );
		if( platform.mImpulse )
		{
			const SDL_Rect jumpPos = { platformPos.x+7, platformPos.y-34, 36, 36};
			SDL_RenderCopy( mSDLRenderer, manager->mModuleObjectManager->Background().JumpTexture().SDLTexture(), NULL, &jumpPos );
		}

	}

	// Render player
	const auto& playerRect = manager->mModuleObjectManager->Player().GetRect();
	const SDL_Rect playerPos = { playerRect.x, int(manager->mModuleObjectManager->GetCamera().GetRelativePosition( playerRect.y )), playerRect.w, playerRect.h };
	SDL_RenderCopy( mSDLRenderer, manager->mModuleObjectManager->Player().Texture().SDLTexture(), NULL, &playerPos );

	// Render enemy
	if( manager->mModuleObjectManager->HasSomeEnemy() )
	{
		auto& enemy = manager->mModuleObjectManager->Enemy();
		const auto& enemyRect = enemy.GetRect();
		const SDL_Rect enemyPos = { enemyRect.x, int(manager->mModuleObjectManager->GetCamera().GetRelativePosition( enemyRect.y )), enemyRect.w, enemyRect.h };
		SDL_RenderCopy( mSDLRenderer, enemy.Texture().SDLTexture(), NULL, &enemyPos );
	}
	

	if( manager->mModuleObjectManager->GetGameState() == PLAYING )
	{
		const auto score = "Score: "+std::to_string( manager->mModuleObjectManager->GetScore() );
		FC_Draw( manager->mModuleObjectManager->Font(), mSDLRenderer, 3, 850, score.c_str() );
	
		// Render bullet
		auto& bullet = manager->mModuleObjectManager->Player().Bullet();
		if( bullet.mIsActive )
		{
			const SDL_Rect bulletRect = { bullet.mRect.x, int(manager->mModuleObjectManager->GetCamera().GetRelativePosition( bullet.mRect.y )), bullet.mRect.w, bullet.mRect.h };
			SDL_RenderCopy( mSDLRenderer, bullet.mTexture.SDLTexture(), NULL, &bulletRect );
		}

	}
	else if( manager->mModuleObjectManager->GetGameState() == MENU )
	{
		SDL_Rect playButtonRect = { 140, 300, 222, 80 };
		SDL_RenderCopy( mSDLRenderer, manager->mModuleObjectManager->Background().PlayButtonTexture().SDLTexture(), NULL, &playButtonRect );
	}

	SDL_RenderPresent( mSDLRenderer );
	return true;
}

bool CModuleRenderer::Clear()
{
	SDL_DestroyRenderer( mSDLRenderer );
	return true;
}

SDL_Renderer* CModuleRenderer::SDLRenderer()
{
	return mSDLRenderer;
}
