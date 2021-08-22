function Lava_Interaction(ttx,tty,tx,ty)
	{
				
			if Tile_Grid[# ttx,tty]=0
			Create_New_Tile("Rock", ttx,tty)
			else
			if Tile_Grid[# ttx,tty].tile_type!="Bounder"{
				if Shrine_Tile!=Tile_Grid[# ttx,tty]{
				instance_destroy(Tile_Grid[# ttx,tty],1)
			Create_New_Tile("Lava", ttx,tty)}
			
			}
		
	}