function Choose_An_Island_Type(){
///scr_lootDrop(inst.level)
//argument0 level of monster killed
//Chance to drop an item based on level
// level 1 10%  chance
// level 2 20% chance
// level 3 30% chance etc
//If an item is dropped the rarity of an items also based on level



var chance;
l=Player_Island_Level
chance = random_range(0, Island_Blueprint_Array[l][0][tileType.island_type][3])
//sm()
fi=0
var i;
start_random=0
for (i = 0; i < Island_Blueprint_Array[l][0][tileType.island_type][2]; i += 1) // Add up all chances in drop item
   {
	   //sm( Island_Blueprint_Array[l][i][tileType.island_type][1])
	    
	 end_random=start_random+Island_Blueprint_Array[l][i][tileType.island_type][1]
	 
   if chance>=start_random && chance<end_random{
	   
   fi=i
   
   }
   start_random+=Island_Blueprint_Array[l][i][tileType.island_type][1]
   }
 //  sm(fi)
return fi

}