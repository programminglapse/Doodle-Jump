#ifndef C_BACKGROUND__H
#define C_BACKGROUND__H

#include "CTexture.h"

#include "SDL.h"

#include <vector>

struct SPlatform
{
	SPlatform( const SDL_Rect& aRect, bool aIsMoving, bool aImpulse = false ) :
		mRect( aRect ),
		mIsMoving( aIsMoving ),
		mXPos( aRect.x ),
		mYPos( aRect.y ),
		mDirectionSign(1),
		mImpulse( aImpulse )
	{
	}

	SDL_Rect mRect;
	bool mIsMoving;
	float mXPos;
	float mYPos;
	int mDirectionSign;
	bool mImpulse;
};

class CBackground
{
public:
	using platforms = std::vector<SPlatform>;

	CBackground( const CTexture& aBackTexture, const CTexture& aPlatformTexture, const CTexture& aMovingPlatformTexture,
			const CTexture& aJumpTexture, const CTexture& aPlayButton, const platforms& aPlatforms);

	CTexture& BackTexture();
	CTexture& PlatformTexture();
	CTexture& MovingPlatformTexture();
	CTexture& JumpTexture();
	CTexture& PlayButtonTexture();
	const platforms& GetPlatforms() const;
	void SetPlatforms( const platforms& aPlatforms );

	void MovePlatforms( const int aMinX, const int aMaxX, const float& aDeltaTime );
	void RespawnPlatforms( const float& aYCamera, const float& aScreenHeight );

private:
	CTexture mBackTexture;
	CTexture mPlatformTexture;
	CTexture mMovingPlatformTexture;
	CTexture mJumpTexture;
	CTexture mPlayButton;
	platforms mPlatforms;
};

#endif
