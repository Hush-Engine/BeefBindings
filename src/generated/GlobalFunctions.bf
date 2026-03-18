namespace Hush;
using System;
public static class GlobalFunctions {

	public static void Hush__InputManager__SetCursorLock(ECursorLockMode lockMode) {
		BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__SetCursorLock(lockMode);
	}

	public static bool Hush__InputManager__FetchCharThisFrame(char8* outChar) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__FetchCharThisFrame(outChar);
	}

	public static bool Hush__InputManager__GetMouseButtonPressed(EMouseButton button) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__GetMouseButtonPressed(button);
	}

	public static bool Hush__InputManager__IsKeyHeld(EKeyCode key) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__IsKeyHeld(key);
	}

	public static bool Hush__InputManager__IsKeyUp(EKeyCode key) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__IsKeyUp(key);
	}

	public static bool Hush__InputManager__IsKeyDownThisFrame(EKeyCode key) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__IsKeyDownThisFrame(key);
	}

	public static bool Hush__InputManager__IsKeyDown(EKeyCode key) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__InputManager__IsKeyDown(key);
	}

	public static void* Hush__HushEngine__GetScene(void* self) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__HushEngine__GetScene(self);
	}

	public static RawQuery Hush__Scene__CreateRawQuery(void* self, uint64* componentsData, uint64 componentsSize, RawQuery.ECacheMode cacheMode) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateRawQuery(self, componentsData, componentsSize, cacheMode);
	}

	public static uint64 Hush__Scene__RegisterComponentRaw(void* self, ComponentTraits.ComponentInfo* desc) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RegisterComponentRaw(self, desc);
	}

	public static void Hush__Scene__RegisterComponentId(void* self, char8* nameData, uint64 nameSize, uint64 id) {
		BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RegisterComponentId(self, nameData, nameSize, id);
	}

	public static Entity Hush__Scene__CreateEntityWithName(void* self, char8* nameData, uint64 nameSize) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateEntityWithName(self, nameData, nameSize);
	}

	public static Entity Hush__Scene__CreateEntity(void* self) {
		return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__CreateEntity(self);
	}

	public static void Hush__Scene__RemoveSystem(void* self, char8* nameData, uint64 nameSize) {
		BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__Scene__RemoveSystem(self, nameData, nameSize);
	}

}