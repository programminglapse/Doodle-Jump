#include "CEnemy.h"

CEnemy::CEnemy( const CTexture& aTexture, const SDL_Rect& aRect, bool aIsActive ) :
	mTexture( aTexture ),
	mRect( aRect ),
	mIsActive( aIsActive )
{
}

const bool CEnemy::IsActive() const
{
	return mIsActive;
}

CTexture& CEnemy::Texture()
{
	return mTexture;
}

const SDL_Rect& CEnemy::GetRect() const
{
	return mRect;
}

void CEnemy::SetPos( const int aXPos, const int aYPos )
{
	mRect.x = aXPos;
	mRect.y = aYPos;
}

void CEnemy::Activate()
{
	mIsActive = true;
}

void CEnemy::DeActivate()
{
	mIsActive = false;
}
