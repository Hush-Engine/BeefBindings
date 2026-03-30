namespace Hush;
using System;
public static class QueryBuilderImpl {

		public static RawQuery InitQuery(void* scene, void* queryDesc) {
			return BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__impl__QueryBuilderImpl__InitQuery(scene, queryDesc);
		}

		public static void InitDescriptor(void* queryDesc, uint64* componentsData, uint64 componentsSize) {
			BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__impl__QueryBuilderImpl__InitDescriptor(queryDesc, componentsData, componentsSize);
		}

		public static void WithTerm(void* queryDesc, void* termCountRef, uint64 term) {
			BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__impl__QueryBuilderImpl__WithTerm(queryDesc, termCountRef, term);
		}

		public static void WithRelationship(void* queryDesc, void* termCountRef, Entity* relationship) {
			BeefHush.EngineDependencies.Instance.FunctionPointerTable.HushFuncPtr_Hush__impl__QueryBuilderImpl__WithRelationship(queryDesc, termCountRef, relationship);
		}

}