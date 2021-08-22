function Create_Object(type,my_tile,xoffset,yoffset)
{
	grid_location_x=my_tile.ttx
		
		grid_location_y=my_tile.tty
		
		character=instance_create_depth(mouse_x,mouse_y,0,oObject)
		character.xoffset=xoffset
		character.yoffset=yoffset
		character.xx=my_tile.xx
		character.yy=my_tile.yy
		ttx=grid_location_x
		tty=grid_location_y
		character.my_tile=my_tile
		character.object_type=type;
		Add_Thing_To_Tile(my_tile,character)
		character.sprite_index=asset_get_index("s"+string(type)) 
	
}