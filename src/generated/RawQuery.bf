namespace Hush;
using System;

[CRepr]
public struct RawQuery {
	public char8[8] m_member0;
	public char8[8] m_member1;

	[LinkName("Hush__RawQuery__GetIterator")]
	public static extern RawQuery.QueryIterator Hush__RawQuery__GetIterator(RawQuery* self);
	public RawQuery.QueryIterator GetIterator() {
		return Hush__RawQuery__GetIterator(&this);
	}

	[LinkName("Hush__RawQuery__GetScene")]
	public static extern void* Hush__RawQuery__GetScene(RawQuery* self);
	public void* GetScene() {
		return Hush__RawQuery__GetScene(&this);
	}

	[CRepr]
	public struct QueryIterator {
		public char8[384] m_member0;
		public char8[8] m_member1;
		public char8[1] m_member2;

		[LinkName("Hush__RawQuery__QueryIterator__GetEntityAt")]
		public static extern uint64 Hush__RawQuery__QueryIterator__GetEntityAt(RawQuery.QueryIterator* self, uint64 index);
		public uint64 GetEntityAt(uint64 index) {
			return Hush__RawQuery__QueryIterator__GetEntityAt(&this, index);
		}

		[LinkName("Hush__RawQuery__QueryIterator__GetComponentAt")]
		public static extern void* Hush__RawQuery__QueryIterator__GetComponentAt(RawQuery.QueryIterator* self, int8 index, uint64 size);
		public void* GetComponentAt(int8 index, uint64 size) {
			return Hush__RawQuery__QueryIterator__GetComponentAt(&this, index, size);
		}

		[LinkName("Hush__RawQuery__QueryIterator__Size")]
		public static extern uint64 Hush__RawQuery__QueryIterator__Size(RawQuery.QueryIterator* self);
		public uint64 Size() {
			return Hush__RawQuery__QueryIterator__Size(&this);
		}

		[LinkName("Hush__RawQuery__QueryIterator__Finished")]
		public static extern bool Hush__RawQuery__QueryIterator__Finished(RawQuery.QueryIterator* self);
		public bool Finished() {
			return Hush__RawQuery__QueryIterator__Finished(&this);
		}

		[LinkName("Hush__RawQuery__QueryIterator__Skip")]
		public static extern void Hush__RawQuery__QueryIterator__Skip(RawQuery.QueryIterator* self);
		public void Skip() {
			Hush__RawQuery__QueryIterator__Skip(&this);
		}

		[LinkName("Hush__RawQuery__QueryIterator__Next")]
		public static extern bool Hush__RawQuery__QueryIterator__Next(RawQuery.QueryIterator* self);
		public bool Next() {
			return Hush__RawQuery__QueryIterator__Next(&this);
		}
	}

	[CRepr]
	public enum EComponentAccess : int32 {
		EComponentAccess_ReadOnly = 0,
		EComponentAccess_WriteOnly = 1,
		EComponentAccess_ReadWrite = 2,
		EComponentAccess_Default = 2,
	}

	[CRepr]
	public enum ECacheMode : int32 {
		ECacheMode_Default = 0,
		ECacheMode_Auto = 1,
		ECacheMode_All = 2,
		ECacheMode_None = 3,
	}
}
