namespace Hush;
using System;

[CRepr]
public struct HushFuncPtrTable {
	public function uint64(Entity* self,ComponentTraits.ComponentInfo*) HushFuncPtr_Hush__Entity__RegisterComponentRaw;
	public function void*(Entity* self,uint64) HushFuncPtr_Hush__Entity__AddComponentRaw;
	public function void*(Entity* self,uint64) HushFuncPtr_Hush__Entity__GetComponentRaw;
	public function bool(Entity* self,uint64) HushFuncPtr_Hush__Entity__HasComponentRaw;
	public function void*(Entity* self,uint64 ,bool*) HushFuncPtr_Hush__Entity__EmplaceComponentRaw;
	public function bool(Entity* self,uint64) HushFuncPtr_Hush__Entity__RemoveComponentRaw;
	public function void(Entity* self,Entity*) HushFuncPtr_Hush__Entity__AddChild;
	public function int32(Entity* self) HushFuncPtr_Hush__Entity__GetChildCount;
	public function uint64(Entity* self) HushFuncPtr_Hush__Entity__GetId;
	public function bool(RawQuery.QueryIterator* self) HushFuncPtr_Hush__RawQuery__QueryIterator__Next;
	public function void(RawQuery.QueryIterator* self) HushFuncPtr_Hush__RawQuery__QueryIterator__Skip;
	public function bool(RawQuery.QueryIterator* self) HushFuncPtr_Hush__RawQuery__QueryIterator__Finished;
	public function uint64(RawQuery.QueryIterator* self) HushFuncPtr_Hush__RawQuery__QueryIterator__Size;
	public function void*(RawQuery.QueryIterator* self,int8 ,uint64) HushFuncPtr_Hush__RawQuery__QueryIterator__GetComponentAt;
	public function uint64(RawQuery.QueryIterator* self,uint64) HushFuncPtr_Hush__RawQuery__QueryIterator__GetEntityAt;
	public function void*(RawQuery* self) HushFuncPtr_Hush__RawQuery__GetScene;
	public function RawQuery.QueryIterator(RawQuery* self) HushFuncPtr_Hush__RawQuery__GetIterator;
	public function void(void* self,char8* ,uint64 nameSize) HushFuncPtr_Hush__Scene__RemoveSystem;
	public function Entity(void* self) HushFuncPtr_Hush__Scene__CreateEntity;
	public function Entity(void* self,char8* ,uint64 nameSize) HushFuncPtr_Hush__Scene__CreateEntityWithName;
	public function void(void* self,char8* ,uint64 nameSize,uint64) HushFuncPtr_Hush__Scene__RegisterComponentId;
	public function uint64(void* self,ComponentTraits.ComponentInfo*) HushFuncPtr_Hush__Scene__RegisterComponentRaw;
	public function RawQuery(void* self,uint64* ,uint64 componentsSize,RawQuery.ECacheMode) HushFuncPtr_Hush__Scene__CreateRawQuery;
	public function void*(void* self) HushFuncPtr_Hush__HushEngine__GetScene;
}
