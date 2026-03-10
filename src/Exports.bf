namespace BeefHush;

using System;
using System.Diagnostics;

public static class Exports {

	[Export, CLink]
	public static uint8* InstantiateSystem(char8* name, uint64 nameLength) {
		Debug.Assert(name != null && nameLength > 0, "Cannot instantiate system with empty name");
		StringView sysName = .(name, (int)nameLength);
		let typeRes = Type.GetTypeByName(sysName);

		if (typeRes case .Err(let err)) {
			Debug.FatalError(scope $"Could not find a system with the name {sysName}");
		}

		var instanceRes = typeRes.Value.CreateObject();

		if (instanceRes case .Err(let instanceErr)) {
			Debug.FatalError(scope $"Unable to create system {sysName}, error: {instanceErr}");
		}

		var result = instanceRes.ValueRef;
		// Who knows lol
		return (uint8*)result;
	}
	
	[Export, CLink]
	public static bool GetAvailableSystems(SystemInfo** outSystemInfoArr, uint64* systemsCount) {
		// Array should be allocated by default
		Debug.Assert(outSystemInfoArr != null && outSystemInfoArr != null);
		// All declared systems should be in here
		let interfaceDecl = typeof(GameSystem).TypeDeclaration;

		String sysNameBuffer = scope String(SystemInfo.MAX_SYS_NAME);

		for (let implDecl in Type.TypeDeclarations) {
			if (implDecl.BaseType != interfaceDecl) continue;
			// We add it to our systems array
			var sysInfo = SystemInfo();
			implDecl.GetName(sysNameBuffer);
			StringView(sysNameBuffer).CopyTo(sysInfo.name);

			// Add the system to the list
			(*outSystemInfoArr)[*systemsCount] = sysInfo;
			(*systemsCount)++;
		}

		return false;
	}
	
}
