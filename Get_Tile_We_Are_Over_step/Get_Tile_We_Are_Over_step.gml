function Get_Tile_We_Are_Over_step()
{
Over_Tile=0
//first see if we are over our island tiles


Over_Tile=Island_Grid[# Island_gx,Island_gy]
if Over_Tile=undefined
Over_Tile=0
if Over_Tile=0
{

	with(oTile)
		{
				if Held_Tile!=id 
				{				
				 
					
				//	sx= nx + 2;
					
			
					sx=(xx- View_X)
					sy=(yy- View_Y)

			
					if  mouse_x>sx-Tile_Width/2 and mouse_x<sx+Tile_Width/2 
					and mouse_y>sy-Tile_Height/2 and mouse_y<sy+Tile_Height/2 {
					Over_Tile=id
		
					}
	}
}
}
	}