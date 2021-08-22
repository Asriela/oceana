function Grid_Expansion_step ( ) 
{
	x_expansion=0;
	y_expansion=0;
	
	
	
	if (Expansion_View_X<Grid_Start_X || Expansion_View_X+Expansion_View_Width>Grid_End_X || Expansion_View_Y<Grid_Start_Y || Expansion_View_Y+Expansion_View_Height>Grid_End_Y)
	{
		//	show_message("yesx")
	///if we are taking the view beyond the border of the grid
	if Expansion_View_X<  Grid_Start_X || Expansion_View_X+Expansion_View_Width>Grid_End_X
	{
		//show_message("yesx")
		x_expansion=expansion_size
	}
	
	if Expansion_View_Y< Grid_Start_Y ||  Expansion_View_Y+Expansion_View_Height>Grid_End_Y
	{
		//show_message("yesy")
		y_expansion=expansion_size
	}
	
	
	
		//back up grid data
		//1 create larger grid
	
		large_grid=ds_grid_create(ds_grid_width(Tile_Grid)+x_expansion,ds_grid_height(Tile_Grid)+y_expansion) 
			
		x_expansion=0;
		y_expansion=0;
		
	if Expansion_View_X<  Grid_Start_X 
	{
		//show_message("yesx")
		x_expansion=expansion_size
	}
	
	if Expansion_View_Y< Grid_Start_Y
	{
		//show_message("yesy")
		y_expansion=expansion_size
	}
	
		
		//IF WE ARE EXPANDING NEGATIVELY   THEN   WE REALOCATE 
		//2 transfer tile ids
		//if (x_expansion>0 || y_expansion>0)
		//{
			for( ix=0; ix<ds_grid_width(Tile_Grid); ix++)
			for( iy=0; iy<ds_grid_height(Tile_Grid); iy++)
			{
			
				if Tile_Grid[# ix,iy]!=0
				{
					large_grid[# ix+x_expansion,iy+y_expansion] = Tile_Grid[# ix,iy];
					//show_message("")
				}
			}
//		}

		
		if Expansion_View_X<  Grid_Start_X 
		{
		//	show_message("")
		repeat(Grid_Height/10){
		island_marker_x=random_range(7,expansion_size)
		island_marker_y=random_range(0,ds_grid_height(large_grid))
		Create_Island_Marker(Player_Island_Level,round(island_marker_x),round(island_marker_y))
		}
		}	
		
		if ( Expansion_View_X+Expansion_View_Width>Grid_End_X)
		{ 
		//	show_message("")
		repeat(Grid_Height/10){
		island_marker_x=Grid_End_X-random_range(7,expansion_size)
		island_marker_y=random_range(0,ds_grid_height(large_grid))
		Create_Island_Marker(Player_Island_Level,round(island_marker_x),round(island_marker_y))
		}
		}
	
		if Expansion_View_Y< Grid_Start_Y
		{   
		//	show_message("")
		repeat(Grid_Width/10){
		island_marker_x=random_range(0,ds_grid_width(large_grid))
		island_marker_y=random_range(7,expansion_size)
		Create_Island_Marker(Player_Island_Level,round(island_marker_x),round(island_marker_y))
		}
		}	
		
		if (Expansion_View_Y+Expansion_View_Height>Grid_End_Y){
		//	show_message("")
		repeat(Grid_Width/10){
		island_marker_x=random_range(0,ds_grid_width(large_grid))
		island_marker_y=ds_grid_height(large_grid)-random_range(7,expansion_size)
		Create_Island_Marker(Player_Island_Level,round(island_marker_x),round(island_marker_y))
		}
		}
//	island_marker_x/=Tile_Width
//	island_marker_y/=Tile_Height
	Island_Width	= 10;
		Island_Height	= 10;
	Create_Island_Marker(Player_Island_Level,round(island_marker_x),round(island_marker_y))
		
		
		Grid_Start_X-=x_expansion*Tile_Width
		Grid_Start_Y-=y_expansion*Tile_Height
		Grid_End_X=Grid_Start_X+ds_grid_width(large_grid)*Tile_Width;   
		Grid_End_Y=Grid_Start_Y+ds_grid_height(large_grid)*Tile_Height;
		
	
		//3  destroy old
		ds_grid_destroy(Tile_Grid) 
		//4 re
		Tile_Grid=large_grid  
		Grid_Width=ds_grid_width(Tile_Grid)
Grid_Height=ds_grid_height(Tile_Grid)
	//View_X+=10
	//View_Y+=10
	
	//switch( Expansion_View_X)
	/*
	for( ix=0; ix<ds_grid_width(large_grid); ix++)
			for( iy=0; iy<ds_grid_height(large_grid); iy++)
		Create_New_Tile("Beach",ix,iy)
		*/
		}
} 