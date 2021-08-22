function Draw_Island_Marker_Compass()
{
	for(i=1;i<array_length (Island_Marker_Array);i++)
	{
		dis=point_distance( Island_Marker_Array[i][islandMarker.xx],Island_Marker_Array[i][islandMarker.yy],Shrine_Tile.xx,Shrine_Tile.yy)
	val=4000
		if dis<val{
			dir=point_direction(Island_Marker_Array[i][islandMarker.xx],Island_Marker_Array[i][islandMarker.yy],Shrine_Tile.xx,Shrine_Tile.yy)+180
			len=50
			island_type=Island_Marker_Array[i][islandMarker.island_type]
			col=c_white
			 if island_type!=undefined{
			
				col=Island_Blueprint_Array[1][island_type][tileType.island_type][0]
			//col=Island_Blueprint_Array[Player_Island_Level][island_type][tileType.island_type][0]
			 
			alp=(val-dis)/val
		
			draw_set_alpha(0.2+(0.8*alp))
			draw_set_color(col)
			//if alp+0.2>1
			//sz=1
			//else
			sz=alp
			draw_circle(Shrine_Tile.sx+lengthdir_x(len,dir),Shrine_Tile.sy+lengthdir_y(len,dir),6*(sz),0)
		draw_set_alpha(1)}
		}
	}
}