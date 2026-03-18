namespace BeefHush;

using System;

public class SmallSystem : GameSystem {

	public void Init() {
		Console.WriteLine("Small System was initialized!");
	}

	/// OnShutdown() is called when the system is shutting down.
	public void OnShutdown() {
		Console.WriteLine("Small System was shutdown!");
	}

	/// OnRender() is called when the system should render.
	/// @param delta Time since last frame
	public void OnUpdate(float delta) {
		Console.WriteLine(scope $"Small System is updating with delta time: {delta}!");
		if (Hush.GlobalFunctions.Hush__InputManager__IsKeyDown(Hush.EKeyCode.EKeyCode_SPACE)) {
			Console.WriteLine("Pressed key on Beef!");
		}
	}

	/// OnFixedUpdate() is called when the system should update its state.
	/// @param delta Time since last fixed frame
	public void OnFixedUpdate(float delta) {
		
	}

	/// OnRender() is called when the system should render.
	public void OnRender() {
		
	}

	/// OnPreRender() is called before rendering.
	public void OnPreRender() {
		
	}

	/// OnPostRender() is called after rendering.
	public void OnPostRender() {
		
	}
	
}

