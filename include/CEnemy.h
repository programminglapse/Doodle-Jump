#ifndef C_ENEMY__H
#define C_ENEMY__H

#include "CTexture.h"

#include "SDL.h"

class CEnemy
{
public:
	CEnemy( const CTexture& aTexture, const SDL_Rect& aRect, bool aIsActive = false );

	const bool IsActive() const;
	CTexture& Texture();
	const SDL_Rect& GetRect() const;

	void SetPos( const int aXPos, const int aYPos );
	void Activate();
	void DeActivate();

private:
	CTexture mTexture;
	SDL_Rect mRect;
	bool mIsActive;
};

#endif
