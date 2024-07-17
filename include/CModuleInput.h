#ifndef C_MODULE_INPUT
#define C_MODULE_INPUT

#include "AModule.h"

class CModuleInput : public AModule
{
public:
	CModuleInput() = default;

	bool Update() override;
};

#endif // C_MODULE_INPUT
