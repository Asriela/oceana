function Place_Islands(){
	newi=0
sland_Marker_Array[newi] [0]=1;
	
	Island_Marker_Array[newi] [1]=Grid_Center_X;
	Island_Marker_Array[newi] [2]=Grid_Center_Y;
		Island_Marker_Array[newi] [3]=0;
	Island_Marker_Array[newi] [4]=0
	Island_Marker_Array[newi] [islandMarker.island_created]=0
	Island_Marker_Array[newi] [islandMarker.island_type]=Choose_An_Island_Type()
//Create_Island_Marker(Player_Island_Level,Grid_Center_X,Grid_Center_Y,0,0) 

	for (i=1;i<Grid_Center_X*2;i++)
	{
		xr=random_range(-Grid_Center_X,Grid_Center_X)
		yr=random_range(-Grid_Center_Y,Grid_Center_Y)
		
	Create_Island_Marker(Player_Island_Level,Grid_Center_X+xr,Grid_Center_Y+yr,xr*Tile_Width,yr*Tile_Height) 
	
	}

}