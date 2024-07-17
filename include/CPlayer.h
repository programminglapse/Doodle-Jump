#ifndef C_PLAYER__H
#define C_PLAYER__H

#include "CTexture.h"

#include "SDL.h"

#include <map>

enum EPosition
{
	LEFT = 0,
	RIGHT,
	SHOT
};

struct pos
{
	float x;
	float y;
};

struct SBullet
{
	CTexture mTexture;
	float mYVelocity;
	float mYPos;
	SDL_Rect mRect;
	bool mIsActive;
};

class CPlayer
{
public:
	using position_textures = std::map<EPosition, CTexture>;

	CPlayer( const position_textures& aPositionTextures, const SDL_Rect& aRect, const SBullet& aBullet );

	const SDL_Rect& GetRect() const;
	CTexture& Texture();
	const pos& GetPos() const;
	const pos& GetVelocity() const;
	void SetPos( const pos& aPos );
	void SetVelocity( const pos& aVelocity );
	SBullet& Bullet();

	void Move( const float& aDeltaTime, bool aRight = true );
	void UpdateYPosition( const float& aDeltaTime );
	void Jump( bool aDoubleImpulse = false );
	void Shot();

private:
	EPosition mPosition;
	position_textures mPositionTextures;
	SDL_Rect mRect;
	pos mPos;
	pos mVelocity;
	SBullet mBullet;
};

#endif // C_PLAYER__H
