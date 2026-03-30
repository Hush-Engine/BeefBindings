namespace Hush;
using System;
public static class Scene {

	public static RawQuery CreateRawQuery(void* self, uint64* componentsData, uint64 componentsSize, RawQuery.ECacheMode cacheMode) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateRawQuery(self, componentsData, componentsSize, cacheMode);
	}

	public static uint64 Lookup(void* self, char8* tagData, uint64 tagSize) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__Lookup(self, tagData, tagSize);
	}

	public static uint64 RegisterComponentRaw(void* self, ComponentTraits.ComponentInfo* desc) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RegisterComponentRaw(self, desc);
	}

	public static Entity EntityFromIdUnchecked(void* self, uint64 id) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__EntityFromIdUnchecked(self, id);
	}

	public static void RegisterComponentId(void* self, char8* nameData, uint64 nameSize, uint64 id) {
		BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RegisterComponentId(self, nameData, nameSize, id);
	}

	public static Entity CreateEntityWithName(void* self, char8* nameData, uint64 nameSize) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateEntityWithName(self, nameData, nameSize);
	}

	public static Entity CreateEntity(void* self) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateEntity(self);
	}

	public static void RemoveSystem(void* self, char8* nameData, uint64 nameSize) {
		BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RemoveSystem(self, nameData, nameSize);
	}

}