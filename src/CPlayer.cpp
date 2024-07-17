#include "CPlayer.h"

static const float XVELOCITY = 2.0f;
static const float GRAVITY = 0.001f;
static const float JUMP_FORCE = -4.0f;

CPlayer::CPlayer( const position_textures& aPositionTextures, const SDL_Rect& aRect, const SBullet& aBullet ) :
	mPosition( RIGHT ),
	mPositionTextures( aPositionTextures ),
	mRect( aRect ),
	mPos( {float(aRect.x), float(aRect.y)} ),
	mBullet( aBullet )
{
}

const SDL_Rect& CPlayer::GetRect() const
{
	return mRect;
}

CTexture& CPlayer::Texture()
{
	return mPositionTextures.at(mPosition);
}

const pos& CPlayer::GetPos() const
{
	return mPos;
}

const pos& CPlayer::GetVelocity() const
{
	return mVelocity;
}

void CPlayer::SetPos( const pos& aPos )
{
	mRect.x = aPos.x;
	mRect.y = aPos.y;
	mPos = aPos;
}

void CPlayer::SetVelocity( const pos& aVelocity )
{
	mVelocity = aVelocity;
}

void CPlayer::Move( const float& aDeltaTime, bool aRight )
{
	int sign = aRight ? 1 : -1;
	mVelocity.x = sign*XVELOCITY;

	mPos.x += mVelocity.x*aDeltaTime;
	mRect.x = mPos.x;
	mPosition = aRight ? RIGHT : LEFT;

	if( mPosition == RIGHT &&  mRect.x > 500 )
	{
		mPos.x = 0;
		mRect.x = 0;
	}
	else if( mPosition == LEFT && mRect.x < -mRect.w )
	{
		mPos.x = 500;
		mRect.x = 500;
	}
}

void CPlayer::UpdateYPosition( const float& aDeltaTime )
{
	mVelocity.y += GRAVITY;
	mPos.y += mVelocity.y*aDeltaTime;
	mRect.y = mPos.y;
}

void CPlayer::Jump( bool aDoubleImpulse )
{
	mVelocity.y = (aDoubleImpulse ? 2.0f : 1.0f) * JUMP_FORCE;
}

void CPlayer::Shot()
{
	if( mBullet.mIsActive )
		return;
	mBullet.mIsActive = true;
	mBullet.mRect.x = mRect.x+mRect.w/2.0f-mBullet.mRect.w/2.0f;
	mBullet.mRect.y = mRect.y-mBullet.mRect.h;
	mBullet.mYPos = mPos.y;
	mPosition = SHOT;
}

SBullet& CPlayer::Bullet()
{
	return mBullet;
}
