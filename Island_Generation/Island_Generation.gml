function Island_Generation(island_level,island_type,xx,yy) //
{
//	island_type=choose(1,0)
	//if island_type=undefined {sm(1)exit};
	//sm(island_type)
	island_level=1
	
	//sm("")
	island_index=island_type//floor(random(array_length(Island_Blueprint_Array[0])))
	//sm(island_index)
	island_size=0;
	tile_type_count=array_length(Island_Blueprint_Array[0][0])

	//for(tt=1;tt<tile_type_count;tt++)
	//island_size+=Island_Blueprint_Array[island_level][island_type][tt][2]
	island_size=9
	island_size=ceil(sqrt(island_size))/2

	start_x=xx-island_size/2
	start_y=yy-island_size/2


	
		
		

//sm(island_index)

for(tt=1;tt<Total_Tile_Types;tt++)
{
		expansion_size=20
		tile_type=Island_Blueprint_Array[island_level][island_index][tt][tileProperty.tileName]//Get_Tile_String_Name(tt)

		tile_count=irandom_range(Island_Blueprint_Array[island_level][island_index][tt][tileProperty.leastTiles],Island_Blueprint_Array[island_level][island_index][tt][tileProperty.mostTiles])
//sm(tile_count)
//sm(tile_type)
	for(tc=0;tc<tile_count;tc++)
	{
		s=200
		do{
			could_place=false
			px=round(start_x+random(island_size));
			py=round(start_y+random(island_size));
			//sm(Tile_Grid[# px,py])
			if Tile_Grid[# px,py]=0{
				
			Create_New_Tile(tile_type,px,py)
			could_place=true
			}
		s--;
		}
		until(s<=0 || could_place=true)
	}
}
}