namespace Hush;
using System;
public static class ReflectionDB {

		public static uint8 RegisterClass(void* self, Reflection.TypeInfo typeInfo, uint64 module) {
			return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Reflection__ReflectionDB__RegisterClass(self, typeInfo, module);
		}

}