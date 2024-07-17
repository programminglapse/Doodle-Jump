#ifndef C_MANAGER__H
#define C_MANAGER__H

#include "AModule.h"

#include <vector>

class CModuleTimer;
class CModuleWindow;
class CModuleInput;
class CModuleRenderer;
class CModuleObjectManager;

class CManager
{
public:
	CManager() = default;

	void Play();

	CModuleTimer* mModuleTimer = nullptr;
	CModuleWindow* mModuleWindow = nullptr;
	CModuleInput* mModuleInput = nullptr;
	CModuleRenderer* mModuleRenderer = nullptr;
	CModuleObjectManager* mModuleObjectManager = nullptr;

private:
	void InitModules();

	std::vector<AModule*> mModules;
};

extern CManager* manager;

#endif // C_MANAGER__H
