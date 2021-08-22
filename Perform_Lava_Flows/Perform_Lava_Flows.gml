function Perform_Lava_Flows(tx,ty)
{
	
	//instance_destroy(Tile_Grid[# tx,ty],1)
//	Create_New_Tile("Lava",tx,ty)
	//if Tile_Grid[# tx,ty]=0
	//target_tile_type="Ocean"
	//else
	target_tile_type=Tile_Grid[# tx,ty].tile_type
	
	ttx=tx+1
	tty=ty
	result="Lava"//Combine_Tiles("Lava",target_tile_type)
	Lava_Interaction(ttx,tty,tx,ty)
	
	ttx=tx-1
	tty=ty
	result="Lava"//Combine_Tiles("Lava",target_tile_type)
	Lava_Interaction(ttx,tty,tx,ty)
	
	ttx=tx
	tty=ty+1
	result="Lava"//Combine_Tiles("Lava",target_tile_type)
	
	Lava_Interaction(ttx,tty,tx,ty)
	
	ttx=tx
	tty=ty-1
	result="Lava"//Combine_Tiles("Lava",target_tile_type)
	Lava_Interaction(ttx,tty,tx,ty)

}