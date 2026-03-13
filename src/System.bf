namespace BeefHush;

using System;

[CRepr]
public struct SystemInfo {
	public const int MAX_SYS_NAME = 64;
	public char8[MAX_SYS_NAME] name;
	public int32 registryIndex;

	public this(StringView name, int32 registryIndex) {
		this.name = "";
		this.registryIndex = registryIndex;
		name.CopyTo(this.name);
	}

}

[Reflect(.None, ReflectImplementer=.DefaultConstructor), AlwaysInclude(AssumeInstantiated=true)]
public interface GameSystem {
	public void Init();

	/// OnShutdown() is called when the system is shutting down.
	public void OnShutdown();

	/// OnRender() is called when the system should render.
	/// @param delta Time since last frame
	public void OnUpdate(float delta);

	/// OnFixedUpdate() is called when the system should update its state.
	/// @param delta Time since last fixed frame
	public void OnFixedUpdate(float delta);

	/// OnRender() is called when the system should render.
	public void OnRender();

	/// OnPreRender() is called before rendering.
	public void OnPreRender();

	/// OnPostRender() is called after rendering.
	public void OnPostRender();
}

