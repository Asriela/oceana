function Create_New_Tile(tile_type,grid_location_x,grid_location_y){
	//sm("")
	tile=Tile_Grid[# grid_location_x,grid_location_y]
    if  Tile_Grid[# grid_location_x,grid_location_y]!=Shrine_Tile
	{
	tile=instance_create_depth(0,0,0,oTile);
	tile.tile_type=tile_type;
	tile.tile_variation=0;

/*	tile.ttx=grid_location_x
	tile.tty=grid_location_y
		tile.xx=(round(Grid_Width/2)-tile.ttx)*Tile_Width
	
	tile.yy=(round(Grid_Height/2)-tile.tty)*Tile_Height*/
	tile.xx=((grid_location_x-ds_grid_width(Tile_Grid)/2))*Tile_Width;
	tile.yy=((grid_location_y-ds_grid_height(Tile_Grid)/2))*Tile_Height;
	tile.ttx=grid_location_x
	tile.tty=grid_location_y
	tile.contains_list=ds_list_create();
	if Tile_Grid[# grid_location_x,grid_location_y]!=0 
	instance_destroy(Tile_Grid[# grid_location_x,grid_location_y],1)
	Tile_Grid[# grid_location_x,grid_location_y]=tile;
	//save it in the grid
	}
	
	return tile;
 
}