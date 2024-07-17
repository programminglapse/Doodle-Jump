#include "CModuleObjectManager.h"

#include "CManager.h"
#include "CModuleRenderer.h"
#include "CModuleTimer.h"
#include "Globals.h"

#include <algorithm>

#include "SDL.h"

const static int MIN_PLATFORMS = 10;
const static int MAX_PLATFORMS = 15;
const static int PLAYER_SIZE = 60;
const static float SPAWN_ENEMY_PROB = 0.4f;

CPlayer CreatePlayer();
CPlayer::position_textures CreatePlayerPositionTextures();

CBackground CreateBackground();
CBackground::platforms CreateRandomPlatforms();

std::vector<CEnemy> CreateEnemies();

// Collisions
bool PlayerIsAbovePlatform( const CPlayer& aPlayer, const SPlatform& aPlatform );
std::pair<bool,bool> CheckCollision( const CPlayer& aPlayer, const CBackground::platforms& aPlatforms );
bool CheckCollision( const SDL_Rect& aLeft, const SDL_Rect& aRight );

float SCamera::GetRelativePosition( const float& aYPos ) const
{
	return aYPos-mYPos;
}

CModuleObjectManager::CModuleObjectManager() :
	mBackground( CreateBackground() ),
	mPlayer( CreatePlayer() ),
	mCamera( {(float)( mPlayer.GetRect().y + mPlayer.GetRect().h / 2.0f ) - SCREEN_HEIGHT / 2.0f} ),
	mEnemies( CreateEnemies() ),
	mFont( FC_CreateFont() )
{
	FC_LoadFont( mFont, manager->mModuleRenderer->SDLRenderer(), "../assets/fonts/font.ttf", 30, FC_MakeColor(0,0,0,255), TTF_STYLE_NORMAL );
}

bool CModuleObjectManager::Update()
{
	if( mGameState != PLAYING )
		return true;

	const auto collisionData = CheckCollision( mPlayer, mBackground.GetPlatforms() );
	if( collisionData.first )
		mPlayer.Jump( collisionData.second );

	if( HasSomeEnemy() && CheckCollision( mPlayer.GetRect(), mEnemies[mActiveEnemyIdx].GetRect() ) )
	{
		static int collisionOffset = 2;
		if( mPlayer.GetRect().y+mPlayer.GetRect().h < mEnemies[mActiveEnemyIdx].GetRect().y+collisionOffset  )
		{
			mPlayer.Jump();
			mActiveEnemyIdx = -1;
		}
		else
		{
			mGameState = MENU;
			ResetEntities();
			return true;
		}
	}

	mPlayer.UpdateYPosition( manager->mModuleTimer->GetDeltaTime() );
	if( mPlayer.Bullet().mIsActive )
	{
		mPlayer.Bullet().mYPos += mPlayer.Bullet().mYVelocity*manager->mModuleTimer->GetDeltaTime();
		mPlayer.Bullet().mRect.y = mPlayer.Bullet().mYPos;

		if( HasSomeEnemy() && CheckCollision( mPlayer.Bullet().mRect, Enemy().GetRect() ) )
		{
			Enemy().DeActivate();
			mActiveEnemyIdx = -1;
			mPlayer.Bullet().mIsActive = false;
		}

		if( mCamera.GetRelativePosition(mPlayer.Bullet().mYPos) < 0 )
			mPlayer.Bullet().mIsActive = false;
	}

	if( mCamera.GetRelativePosition( mPlayer.GetRect().y ) > 900 )
	{
		ResetEntities();
		mGameState = MENU;
	}

	if( mPlayer.GetVelocity().y < 0 )
	{
		const auto center = (float)( mPlayer.GetPos().y + mPlayer.GetRect().h / 2.0f ) - SCREEN_HEIGHT / 2.0f;
		if( mCamera.mYPos > center )
		{
			mDistance += mCamera.mYPos-center;
			mCamera.mYPos = center;
			// Respawn platforms
			mBackground.RespawnPlatforms( mCamera.mYPos, SCREEN_HEIGHT );

			if( mDistance>1.0f && int(mDistance)%900 == 0 )
				SpawnRandomEnemy();
		}
	}

	// Move platforms horizontally
	mBackground.MovePlatforms( 0, SCREEN_WIDTH, manager->mModuleTimer->GetDeltaTime() );

	return true;
}


CBackground& CModuleObjectManager::Background()
{
	return mBackground;
}

CPlayer& CModuleObjectManager::Player()
{
	return mPlayer;
}

const SCamera& CModuleObjectManager::GetCamera() const
{
	return mCamera;
}

CEnemy& CModuleObjectManager::Enemy()
{
	return mEnemies[mActiveEnemyIdx];
}

int CModuleObjectManager::GetScore()
{
	return mDistance;
}

const EGameState& CModuleObjectManager::GetGameState() const
{
	return mGameState;
}

void CModuleObjectManager::SetGameState( const EGameState& aGameState )
{
	mGameState = aGameState;
}

FC_Font* CModuleObjectManager::Font()
{
	return mFont;
}

void CModuleObjectManager::SpawnRandomEnemy()
{
	if( HasSomeEnemy() )
	{
		// Check if enemy is visible
		if( mCamera.GetRelativePosition( mEnemies[mActiveEnemyIdx].GetRect().y ) > 900 )
			mActiveEnemyIdx = -1;
		else
			return;
	}

	std::random_device rd;
    std::mt19937 gen(rd());
    std::bernoulli_distribution d(SPAWN_ENEMY_PROB);

	if( !d(gen) )
		return;

	mActiveEnemyIdx = GetRandomNumberBetween( 0, mEnemies.size()-1);
	auto& enemy = mEnemies[mActiveEnemyIdx];
	enemy.Activate();
	enemy.SetPos( GetRandomNumberBetween(20,480-enemy.GetRect().w), mCamera.mYPos-enemy.GetRect().h );
}

bool CModuleObjectManager::HasSomeEnemy() const
{
	return mActiveEnemyIdx >= 0;
}

void CModuleObjectManager::ResetEntities()
{
	mPlayer.SetPos( {100,450} );
	mPlayer.SetVelocity( {0,0} );

	mActiveEnemyIdx = -1;
	for( auto& enemy : mEnemies )
		enemy.DeActivate();

	mCamera.mYPos = (float)( mPlayer.GetRect().y + mPlayer.GetRect().h / 2.0f ) - SCREEN_HEIGHT / 2.0f;
	mDistance = 0;
	mBackground.SetPlatforms( CreateRandomPlatforms() );
}

CPlayer CreatePlayer()
{
	const auto playerPositionTextures = CreatePlayerPositionTextures();
	return CPlayer( playerPositionTextures, { 100, 450, PLAYER_SIZE, PLAYER_SIZE },
			{ CTexture( "../assets/bullet.png", manager->mModuleRenderer->SDLRenderer() ), -4.0f, 0, {0,0,18,18}, false } );
}

CPlayer::position_textures CreatePlayerPositionTextures()
{
	return {
			{ RIGHT, CTexture( "../assets/player/right.png", manager->mModuleRenderer->SDLRenderer() ) },
			{ LEFT, CTexture( "../assets/player/left.png", manager->mModuleRenderer->SDLRenderer() ) },
			{ SHOT, CTexture( "../assets/player/shot.png", manager->mModuleRenderer->SDLRenderer() ) },
	};
}

CBackground CreateBackground()
{
	return CBackground( CTexture( "../assets/background.png", manager->mModuleRenderer->SDLRenderer() ),
			CTexture( "../assets/platform.png", manager->mModuleRenderer->SDLRenderer() ),
			CTexture( "../assets/movingplatform.png", manager->mModuleRenderer->SDLRenderer() ),
			CTexture( "../assets/bjump.png", manager->mModuleRenderer->SDLRenderer() ),
			CTexture( "../assets/play.png", manager->mModuleRenderer->SDLRenderer() ),
			CreateRandomPlatforms() );
}

CBackground::platforms CreateRandomPlatforms()
{
	const auto count = GetRandomNumberBetween( MIN_PLATFORMS, MAX_PLATFORMS );
	std::random_device rd;
    std::mt19937 gen(rd());
    std::bernoulli_distribution d(MOVING_PLATFORM_PROB);
 
	CBackground::platforms platforms;
	platforms.reserve( count );

	for( int i = 0; i < count; ++i )
		platforms.push_back( { { GetRandomNumberBetween( 0, 500-PLATFORM_WIDTH ),
				GetRandomNumberBetween( 0, 900 ), PLATFORM_WIDTH, PLATFORM_HEIGHT }, d(gen) } );

	for( int i = 0; i < 900; i+=100 )
		platforms.push_back( { { GetRandomNumberBetween( 0, 500-PLATFORM_WIDTH ),
				i, PLATFORM_WIDTH, PLATFORM_HEIGHT }, d(gen) } );
	
	platforms.push_back( { { 100, 420, PLATFORM_WIDTH, PLATFORM_HEIGHT }, false } );

	return platforms;
}

std::pair<bool,bool> CheckCollision( const CPlayer& aPlayer, const CBackground::platforms& aPlatforms )
{
	if( aPlayer.GetVelocity().y <= 0 )
		return {false,false};

	for( const auto& platform : aPlatforms )
	{
		if( PlayerIsAbovePlatform( aPlayer, platform ) && CheckCollision( aPlayer.GetRect(), platform.mRect ) )
			return { true, platform.mImpulse };
	}
	return {false,false};
}

bool CheckCollision( const SDL_Rect& aLeft, const SDL_Rect& aRight )
{
	SDL_Rect result;
	return SDL_IntersectRect( &aLeft, &aRight, &result );
}

bool PlayerIsAbovePlatform( const CPlayer& aPlayer, const SPlatform& aPlatform )
{
	return aPlayer.GetRect().y+aPlayer.GetRect().h < aPlatform.mRect.y+(aPlatform.mRect.h/2.0f);
}

std::vector<CEnemy> CreateEnemies()
{
	return { CEnemy( CTexture( "../assets/enemies/enemy1.png", manager->mModuleRenderer->SDLRenderer() ), {0,0,60,85}, false ),
			CEnemy( CTexture( "../assets/enemies/enemy2.png", manager->mModuleRenderer->SDLRenderer() ), {0,0,83,53}, false ),
			CEnemy( CTexture( "../assets/enemies/enemy3.png", manager->mModuleRenderer->SDLRenderer() ), {0,0,57,84}, false )
			};
}
