function iterate() {


		global._eachPos[? global._eachCurrent]++;
	
		switch(global._eachType[? global._eachCurrent]) {
			case ds_type_array:
			case ds_type_list:
			case ds_type_grid:
				if (global._eachPos[? global._eachCurrent] >= global._eachSize[? global._eachCurrent]) {
					global._eachCanDo[? global._eachCurrent] = 0; //stop
				}
				break;
			case ds_type_map:
				global._eachKey[? global._eachCurrent] = ds_map_find_next(global._eachVar[? global._eachCurrent], global._eachKey[? global._eachCurrent]);
				if (is_undefined(global._eachKey[? global._eachCurrent])) {
					global._eachCanDo[? global._eachCurrent] = 0; //stop
				}
				break;
			case ds_type_stack:
				if (ds_stack_size(global._eachVar[? global._eachCurrent]) == 0) {
					global._eachCanDo[? global._eachCurrent] = 0; //stop
				}
				break;
			case ds_type_queue:
				if (ds_queue_size(global._eachVar[? global._eachCurrent]) == 0) {
					global._eachCanDo[? global._eachCurrent] = 0; //stop
				}
				break;
			case ds_type_priority:
				if (ds_priority_size(global._eachVar[? global._eachCurrent]) == 0) {
					global._eachCanDo[? global._eachCurrent] = 0; //stop
				}
				break;
		}
	
		return 1;


}
