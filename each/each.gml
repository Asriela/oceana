function each(argument0, argument1) {


		/// @param struct
		/// @param type

		var structs = argument0;
		var type = argument1;
	
		// 0 - array
		// 1 - ds_type_map
		// 2 - ds_type_list
		// 3 - ds_type_stack
		// 4 - ds_type_queue
		// 5 - ds_type_grid
		// 6 - ds_type_priority
	
		ds_stack_push(global._eachStack, global._eachPrefix);
		global._eachCurrent = global._eachPrefix;
		global._eachPrefix++;
	
		global._eachCanDo[? global._eachCurrent] = 1;
		global._eachType[? global._eachCurrent] = type;
		global._eachVar[? global._eachCurrent] = structs;
		global._eachPos[? global._eachCurrent] = 0;
		global._eachSize[? global._eachCurrent] = 0;
		global._eachKey[? global._eachCurrent] = 0;
	
		switch (type) {
			case ds_type_array: // 0
				global._eachSize[? global._eachCurrent] = array_length_1d(structs);
				break;
			case ds_type_map: // 1
				global._eachSize[? global._eachCurrent] = ds_map_size(structs);
				global._eachKey[? global._eachCurrent] = ds_map_find_first(structs);
				break;
			case ds_type_list: // 2
				global._eachSize[? global._eachCurrent] = ds_list_size(structs);
				break;
			case ds_type_stack: // 3
				global._eachVar[? global._eachCurrent] = ds_stack_create();
				ds_stack_copy(global._eachVar[? global._eachCurrent], structs);
				global._eachSize[? global._eachCurrent] = ds_stack_size(structs);
				break;
			case ds_type_queue: // 4
				global._eachSize[? global._eachCurrent] = ds_queue_size(structs);
				global._eachVar[? global._eachCurrent] = ds_queue_create();
				ds_queue_copy(global._eachVar[? global._eachCurrent], structs);
				break;
			case ds_type_grid: // 5
				global._eachSize[? global._eachCurrent] = ds_grid_width(structs) * ds_grid_height(structs);
				break;
			case ds_type_priority: // 6
				global._eachSize[? global._eachCurrent] = ds_priority_size(structs);
				global._eachVar[? global._eachCurrent] = ds_priority_create();
				ds_priority_copy(global._eachVar[? global._eachCurrent], structs);
				break;
			default:
				global._eachCanDo[? global._eachCurrent] = 0;
				// should free automatically
				show_error("it's not a array, or not supported ds_ structure, sorry", true);
		}
	


}
