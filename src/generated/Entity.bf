namespace Hush;
using System;

[CRepr]
public struct Entity {
	public char8[8] m_member0;
	public char8[8] m_member1;

	[LinkName("Hush__Entity__GetId")]
	public static extern uint64 Hush__Entity__GetId(Entity* self);
	public uint64 GetId() {
		return Hush__Entity__GetId(&this);
	}

	[LinkName("Hush__Entity__GetChildCount")]
	public static extern int32 Hush__Entity__GetChildCount(Entity* self);
	public int32 GetChildCount() {
		return Hush__Entity__GetChildCount(&this);
	}

	[LinkName("Hush__Entity__AddChild")]
	public static extern void Hush__Entity__AddChild(Entity* self, Entity* child);
	public void AddChild(Entity* child) {
		Hush__Entity__AddChild(&this, child);
	}

	[LinkName("Hush__Entity__RemoveComponentRaw")]
	public static extern bool Hush__Entity__RemoveComponentRaw(Entity* self, uint64 componentId);
	public bool RemoveComponentRaw(uint64 componentId) {
		return Hush__Entity__RemoveComponentRaw(&this, componentId);
	}

	[LinkName("Hush__Entity__EmplaceComponentRaw")]
	public static extern void* Hush__Entity__EmplaceComponentRaw(Entity* self, uint64 componentId, bool* isNew);
	public void* EmplaceComponentRaw(uint64 componentId, bool* isNew) {
		return Hush__Entity__EmplaceComponentRaw(&this, componentId, isNew);
	}

	[LinkName("Hush__Entity__HasComponentRaw")]
	public static extern bool Hush__Entity__HasComponentRaw(Entity* self, uint64 componentId);
	public bool HasComponentRaw(uint64 componentId) {
		return Hush__Entity__HasComponentRaw(&this, componentId);
	}

	[LinkName("Hush__Entity__GetComponentRaw")]
	public static extern void* Hush__Entity__GetComponentRaw(Entity* self, uint64 componentId);
	public void* GetComponentRaw(uint64 componentId) {
		return Hush__Entity__GetComponentRaw(&this, componentId);
	}

	[LinkName("Hush__Entity__AddComponentRaw")]
	public static extern void* Hush__Entity__AddComponentRaw(Entity* self, uint64 componentId);
	public void* AddComponentRaw(uint64 componentId) {
		return Hush__Entity__AddComponentRaw(&this, componentId);
	}

	[LinkName("Hush__Entity__RegisterComponentRaw")]
	public static extern uint64 Hush__Entity__RegisterComponentRaw(Entity* self, ComponentTraits.ComponentInfo* desc);
	public uint64 RegisterComponentRaw(ComponentTraits.ComponentInfo* desc) {
		return Hush__Entity__RegisterComponentRaw(&this, desc);
	}
}
