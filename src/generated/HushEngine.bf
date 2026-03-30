namespace Hush;
using System;
public static class HushEngine {

	public static void* GetScene(void* self) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__HushEngine__GetScene(self);
	}

}