#include "CBackground.h"

#include "Globals.h"

static float PLATFORM_VELOCITY = 1.0f;

CBackground::CBackground( const CTexture& aBackTexture, const CTexture& aPlatformTexture, const CTexture& aMovingPlatformTexture,
		const CTexture& aJumpTexture, const CTexture& aPlayButton, const platforms& aPlatforms ) :
	mBackTexture( aBackTexture ),
	mPlatformTexture( aPlatformTexture ),
	mJumpTexture( aJumpTexture ),
	mPlayButton( aPlayButton ),
	mMovingPlatformTexture( aMovingPlatformTexture ),
	mPlatforms( aPlatforms )
{
}

CTexture& CBackground::BackTexture()
{
	return mBackTexture;
}

CTexture& CBackground::PlatformTexture()
{
	return mPlatformTexture;
}

CTexture& CBackground::MovingPlatformTexture()
{
	return mMovingPlatformTexture;
}

CTexture& CBackground::JumpTexture()
{
	return mJumpTexture;
}

CTexture& CBackground::PlayButtonTexture()
{
	return mPlayButton;
}

const CBackground::platforms& CBackground::GetPlatforms() const
{
	return mPlatforms;
}

void CBackground::SetPlatforms( const platforms& aPlatforms )
{
	mPlatforms = aPlatforms;
}

void CBackground::MovePlatforms( const int aMinX, const int aMaxX, const float& aDeltaTime )
{
	for( auto& platform : mPlatforms )
	{
		if( platform.mIsMoving )
		{
			const float dx = PLATFORM_VELOCITY*aDeltaTime;
			if( platform.mXPos + platform.mDirectionSign*dx < aMinX  || platform.mXPos + platform.mDirectionSign*dx > (aMaxX-platform.mRect.w) )
				platform.mDirectionSign *= -1;

			platform.mXPos += platform.mDirectionSign*PLATFORM_VELOCITY*aDeltaTime;
			platform.mRect.x = platform.mXPos;
		}
	}
}

void CBackground::RespawnPlatforms( const float& aYCamera, const float& aScreenHeight )
{
	std::random_device rd;
    std::mt19937 gen(rd());
    std::bernoulli_distribution d(MOVING_PLATFORM_PROB);
    std::bernoulli_distribution d2(IMPULSE_PLATFORM_PROB);

	for( auto& platform : mPlatforms )
	{
		if( platform.mYPos-aYCamera > aScreenHeight )
		{
			platform.mYPos = aYCamera;
			platform.mRect.y = platform.mYPos;
			platform.mXPos = GetRandomNumberBetween( 0, 500-PLATFORM_WIDTH);
			platform.mRect.x = platform.mXPos;
			platform.mIsMoving = d(gen);
			platform.mImpulse = !platform.mIsMoving && d2(gen);
		}
	}
}
