function Move_Tile_step() 
{
    count_as_timelapse_step = false
    if Action_Left_Pressed 
	{

        if Held_Tile = noone && (( Over_Tile!=undefined && instance_exists(Over_Tile) && Is_Movable(Over_Tile.tile_type) && (Over_Tile.can_move || Developer_Mode)) || Over_Tile = 0) 
		{
			//sm("")
            tx = Island_gx//-(Grid_Start_X - (View_X + mouse_x)) / Tile_Width
            ty = Island_gy//-(Grid_Start_Y - (View_Y + mouse_y)) / Tile_Height
            tx = round(tx - 1)
            ty = round(ty)
            picked_tile = 0
			
            if Over_Tile != 0 
			{
                picked_tile = Over_Tile;
                tx = Over_Tile.ttx
                ty = Over_Tile.tty
                xxx = Over_Tile.xx
                yyy = Over_Tile.yy
                Over_Tile.first_time_move = 1
            


            
			
                source_tile = picked_tile.tile_type;
                Held_Tile = picked_tile

                //volcanos cant be picked up, can only take rock from it

                Tile_Grid[# picked_tile.ttx, picked_tile.tty] = 0

                if Held_Tile.untouched 
                    Held_Tile.untouched = 0
                

                if source_tile = "Volcano" 
				{
                    Held_Tile.tile_type = "Rock"
                    Perform_Lava_Flows(tx, ty)
                }

                Held_Image = Held_Tile.tile_type

                prev_held_tile_tx = tx
                prev_held_tile_ty = ty
                prev_xx = xxx
                prev_yy = yyy




                with(Held_Tile) 				
                    for (i = 0; i < ds_list_size(contains_list); i++) 
					{
                        contains_list[| i].tile_x_offset = contains_list[| i].xx - Held_Tile.xx
                        contains_list[| i].tile_y_offset = contains_list[| i].yy - Held_Tile.yy
                        contains_list[| i].target_tile = noone

                    }

                

            }
            else 
			{
                if picked_tile = 0 
				{
                    Held_Tile = -2

                    Held_Image = "Water_Ball"
                    prev_xx = View_X + mouse_x
                    prev_yy = View_Y + mouse_y
                }
            }
        }
    } 
	else 
	//
	{
		target_tile=0
        if Held_Tile != noone 
		{
            count_as_timelapse_step = true
            tile_distance = round(((View_X + mouse_x) - prev_xx) / Tile_Width)
            //if tile_distance<0
            //	tile_distance=-tile_distance



            tile_distance = round(((View_Y + mouse_y) - prev_yy) / Tile_Height)
            //		if tile_distance<0
            //		tile_distance=-tile_distance

            target_tile = Over_Tile
//sm(target_tile)
		} 
            if target_tile != 0 && target_tile!=undefined
			{
                if Held_Tile = -2
                held_tile_type = "Ocean"
                else
                    held_tile_type = Held_Tile.tile_type
                if Combine_Tiles(held_tile_type, target_tile.tile_type) != noone 
				{


                    target_tile.tile_type = Combine_Tiles(held_tile_type, target_tile.tile_type)
                    if Held_Tile != -2 
					{

                        with(Held_Tile) 
						{
                            for (i = 0; i < ds_list_size(contains_list); i++) 
							{
                                contains_list[| i].xx = Held_Tile.xx + contains_list[| i].tile_x_offset
                                contains_list[| i].yy = Held_Tile.yy + contains_list[| i].tile_y_offset
                            }
                            instance_destroy(Held_Tile)
                        }
                    }
                    else 
					{
                        Create_Wave()
                        count_as_timelapse_step = true
                    }
                    //	Create_Wave()
                }
                else
                if Held_Tile != -2 
				{
                    count_as_timelapse_step = false
                    //send back
                    Tile_Grid[# prev_held_tile_tx, prev_held_tile_ty] = Held_Tile
                }
            }
            else //is  water - cannot combine
            {
                //place tile 
                if Held_Tile != -2 && instance_exists(Held_Tile) 
				{ //is  water - cannot place it/can only combine		
                    Island_Grid[# Held_Tile.tttx, Held_Tile.ttty] = Held_Tile
                    tx = Held_Tile.tttx //+tile_distance
                    ty = Held_Tile.ttty //+tile_distance			
                    //Held_Tile.untouched=false

                    Held_Tile.xx = round((View_X + mouse_x) / Tile_Width) * Tile_Width ///((tx-ds_grid_width(Tile_Grid)/2))*Tile_Width//+Tile_Width/2;
                    Held_Tile.yy = round((View_Y + mouse_y) / Tile_Height) * Tile_Height //+Tile_Height/2;
                    Held_Tile.ttx = tx
                  Held_Tile.tty = ty
					Held_Tile.part_of_island=1
                    if instance_exists(Shrine_Tile) 
					{ //&& Tile_Is_Connected(Held_Tile){

                        newly_connected = 0
                        Held_Tile.xdif = round(Held_Tile.ttx) - round(Shrine_Tile.ttx)
                        Held_Tile.ydif = round(Held_Tile.tty) - round(Shrine_Tile.tty)
                    }

                    with(Held_Tile) 
					{
                        for (i = 0; i < ds_list_size(contains_list); i++) 
						{
                            contains_list[| i].xx = Held_Tile.xx + contains_list[| i].tile_x_offset
                            contains_list[| i].yy = Held_Tile.yy + contains_list[| i].tile_y_offset
                        }

                        //Create_Wave()
                    }


                }
            }

            Held_Tile = noone
        
        if count_as_timelapse_step
        Time_Lapse = true;
    }
}