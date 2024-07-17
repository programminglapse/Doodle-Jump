#include "CTexture.h"

#include "SDL.h"
#include "SDL_image.h"

SDL_Texture* CreateTextureFromPath( const std::string& aPath, SDL_Renderer* aRenderer );

CTexture::CTexture( const std::string& aPath, SDL_Renderer* aRenderer ) :
	mPath( aPath ),
	mSDLTexture( CreateTextureFromPath( mPath, aRenderer ) )
{
}

SDL_Texture* CTexture::SDLTexture()
{
	return mSDLTexture;
}

SDL_Texture* CreateTextureFromPath( const std::string& aPath, SDL_Renderer* aRenderer )
{
	auto loadedSurface = IMG_Load( aPath.c_str() );
	auto newTexture = SDL_CreateTextureFromSurface( aRenderer, loadedSurface );
	SDL_FreeSurface( loadedSurface );

	return newTexture;
}
