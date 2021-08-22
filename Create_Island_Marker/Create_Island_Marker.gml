function Create_Island_Marker(island_level,tx,ty,xx,yy) 
{
	//add a new marker
	newi=array_length(Island_Marker_Array)
	Island_Marker_Array[newi] [0]=island_level;
	
	Island_Marker_Array[newi] [1]=tx;
	Island_Marker_Array[newi] [2]=ty;
		Island_Marker_Array[newi] [3]=xx;
	Island_Marker_Array[newi] [4]=yy;
	Island_Marker_Array[newi] [islandMarker.island_created]=0
	Island_Marker_Array[newi] [islandMarker.island_type]=Choose_An_Island_Type()
}