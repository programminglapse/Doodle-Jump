#ifndef C_MODULE_OBJECT_MANAGER
#define C_MODULE_OBJECT_MANAGER

#include "AModule.h"
#include "CBackground.h"
#include "CPlayer.h"
#include "CEnemy.h"

#include "SDL_FontCache.h"

enum EGameState
{
	MENU = 0,
	PLAYING
};

struct SCamera
{
	float mYPos;

	float GetRelativePosition( const float& aYPos ) const;
};

class SDL_Texture;

class CModuleObjectManager: public AModule
{
public:
	CModuleObjectManager();

	bool Update() override;

	CBackground& Background();
	CPlayer& Player();
	const SCamera& GetCamera() const;
	CEnemy& Enemy();
	int GetScore();
	const EGameState& GetGameState() const;
	void SetGameState( const EGameState& aGameState );
	FC_Font* Font();

	bool HasSomeEnemy() const;

private:
	void SpawnRandomEnemy();
	void ResetEntities();

	CBackground mBackground;
	CPlayer mPlayer;
	SCamera mCamera;
	std::vector<CEnemy> mEnemies;
	int mActiveEnemyIdx = -1;
	float mDistance = 0;
	EGameState mGameState = MENU;
	FC_Font* mFont = nullptr;
};

#endif // C_MODULE_INPUT
