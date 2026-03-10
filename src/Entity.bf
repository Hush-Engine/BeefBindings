namespace BeefHush;

using System;

public struct Entity { //: BindingCompletenessCheck<Hush.Entity, Entity> {
	private Hush.Entity m_innerEntity;
	// private bool _IsBindingValid = AllMethodsCovered();

	public uint64 Id => this.m_innerEntity.GetId();

	public int32 ChildCount => this.m_innerEntity.GetChildCount();

	private const int MAX_COMP_NAME = 64;

	private uint64 RegisterCompIfNeeded<T>() {
		let compName = scope String(MAX_COMP_NAME);
		var componentDesc = Hush.ComponentTraits.ComponentInfo();
		componentDesc.size = (uint64)sizeof(T);
		componentDesc.alignment = (uint64)alignof(T);
		componentDesc.name = compName.CStr();

		return this.m_innerEntity.RegisterComponentRaw(&componentDesc);		
	}
	
	public void AddComponent<T>() {
		uint64 compId = this.RegisterCompIfNeeded<T>();
		this.m_innerEntity.AddComponentRaw(compId);
	}

	public void AddChild(ref Entity entity) {
		this.m_innerEntity.AddChild(&entity.m_innerEntity);
	}

}

