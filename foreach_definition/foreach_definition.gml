function foreach_definition() {


		gml_pragma("global", "foreach_definition()");
	
		global._eachPrefix = 1;
		global._eachCurrent = 1;
		global._eachStack = ds_stack_create();
	
		global._eachCanDo = ds_map_create();
		global._eachType = ds_map_create();
		global._eachVar = ds_map_create();
		global._eachPos = ds_map_create();
		global._eachSize = ds_map_create();
		global._eachKey = ds_map_create();
		global._eachLastKey = 0;
		global._eachLastValue = 0;
		global._eachPriorityLowAsFirst = 1;
	
		//global._eachCanDo = 1;
		//global._eachType = 0;
		//global._eachVar = 0;
		//global._eachPos = 0;
		//global._eachSize = 0;
		//global._eachKey = 0;
	
	#macro ds_type_array 0
	
	


}
