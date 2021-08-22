function Move_Whole_Island()
{
	//	if move_island
	if !Move_Locked && mouse_check_button(mb_middle)=2 {
		Move_Locked=0

}

		Move_Aim_X=mouse_x
	Move_Aim_Y=mouse_y
	if mouse_check_button_pressed(mb_left) 
	if Over_Tile=Shrine_Tile
	Move_Island_Mode=1
	else
	Move_Island_Mode=0
	
	if Action_Move_Island_Pressed=-1
Island_Moving=0
else
Island_Moving=1
	if Move_Locked=0
	{
//			Move_Aim_X=mouse_x
//	Move_Aim_Y=mouse_y
	}
	
	/*if point_distance(Shrine_Tile.xx-View_X,Shrine_Tile.yy-View_Y,mouse_x,mouse_y)>200
	move_island=1
	else
	move_island=0*/
	//else
//	Island_Moving=move_island
	//move_island=false
	if   move_island && Island_Move_Complete=1
	{
		Island_Move_Complete=0
		move_direction=point_direction(Shrine_Tile.xx-View_X,Shrine_Tile.yy-View_Y,Mouse_xx+View_X,Mouse_yy+View_Y)
		//sm(move_direction)
		/*for(i=0;i<ds_list_size(My_Island_Tiles_List);i++)
		{
			xx=My_Island_Tiles_List[|i].xx
			yy=My_Island_Tiles_List[|i].yy
			if(move_direction>360-22.5 || move_direction<22.5 )//r
			{
				
					
									
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=Tile_Width
				My_Island_Tiles_List[|i].my=0
				My_Island_Tiles_List[|i].ttx+=1
				My_Island_Tiles_List[|i].tty+=0
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
				//	with(My_Island_Tiles_List[|i])
							
				//sm(My_Island_Tiles_List[|i])
				
				
			}
			
			if(move_direction>180-22.5 && move_direction<180+22.5 )//left
			{
					with(My_Island_Tiles_List[|i])
									//{
										for (i=0;i<ds_list_size(contains_list);i++){
										contains_list[| i].tile_x_offset=contains_list[| i].xx-xx
										contains_list[| i].tile_y_offset=contains_list[| i].yy-yy
										contains_list[| i].target_tile=noone
									}//}
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
								
		My_Island_Tiles_List[|i].mx=-Tile_Width
				My_Island_Tiles_List[|i].my=0
				My_Island_Tiles_List[|i].ttx-=1
				My_Island_Tiles_List[|i].tty+=0
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
				
			}
			
				if(move_direction>90-22.5 && move_direction<90+22.5 )//left
			{
					with(My_Island_Tiles_List[|i])
							//		{
										for (i=0;i<ds_list_size(contains_list);i++){
										contains_list[| i].tile_x_offset=contains_list[| i].xx-xx
										contains_list[| i].tile_y_offset=contains_list[| i].yy-yy
										contains_list[| i].target_tile=noone
									}//}
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=0
				My_Island_Tiles_List[|i].my=-Tile_Height
				My_Island_Tiles_List[|i].ttx+=0
				My_Island_Tiles_List[|i].tty-=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
				
			}
				if(move_direction>270-22.5 && move_direction<270+22.5 )//left
			{
				with(My_Island_Tiles_List[|i])
									{
										for (i=0;i<ds_list_size(contains_list);i++){
										contains_list[| i].tile_x_offset=contains_list[| i].xx-xx
										contains_list[| i].tile_y_offset=contains_list[| i].yy-yy
										contains_list[| i].target_tile=noone
									}}
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
			My_Island_Tiles_List[|i].mx=0
				My_Island_Tiles_List[|i].my=Tile_Height
				My_Island_Tiles_List[|i].ttx+=0
				My_Island_Tiles_List[|i].tty+=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
			}
				if(move_direction>45-22.5 && move_direction<45+22.5 )//left
			{
				//with(My_Island_Tiles_List[|i])
									//{
							
				
								
								if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=Tile_Width
				My_Island_Tiles_List[|i].my=-Tile_Height
				My_Island_Tiles_List[|i].ttx+=1
				My_Island_Tiles_List[|i].tty-=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
		
				//sm(My_Island_Tiles_List[|i])
			}
				if(move_direction>135-22.5 && move_direction<135+22.5 )//left
			{
				
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=-Tile_Width
				My_Island_Tiles_List[|i].my=-Tile_Height
				My_Island_Tiles_List[|i].ttx-=1
				My_Island_Tiles_List[|i].tty-=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
			}
				if(move_direction>225-22.5 && move_direction<225+22.5 )//left
			{
				with(My_Island_Tiles_List[|i])
									{
										for (i=0;i<ds_list_size(contains_list);i++){
										contains_list[| i].tile_x_offset=contains_list[| i].xx-xx
										contains_list[| i].tile_y_offset=contains_list[| i].yy-yy
										contains_list[| i].target_tile=noone
									}}
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=-Tile_Width
				My_Island_Tiles_List[|i].my=+Tile_Height
				My_Island_Tiles_List[|i].ttx-=1
				My_Island_Tiles_List[|i].tty+=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
			}
				if(move_direction>315-22.5 && move_direction<315+22.5 )//left
			{
				with(My_Island_Tiles_List[|i])
									{
										for (i=0;i<ds_list_size(contains_list);i++){
										contains_list[| i].tile_x_offset=contains_list[| i].xx-xx
										contains_list[| i].tile_y_offset=contains_list[| i].yy-yy
										contains_list[| i].target_tile=noone
									}}
				
								
									if Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
								Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=0
				
				My_Island_Tiles_List[|i].mx=+Tile_Width
				My_Island_Tiles_List[|i].my=+Tile_Height
				My_Island_Tiles_List[|i].ttx+=1
				My_Island_Tiles_List[|i].tty+=1
				

				Tile_Grid[# My_Island_Tiles_List[|i].ttx,My_Island_Tiles_List[|i].tty]=My_Island_Tiles_List[|i]
				
				
					with(My_Island_Tiles_List[|i])
													
															for (i=0;i<ds_list_size(contains_list);i++){
															contains_list[| i].xx=xx+contains_list[| i].tile_x_offset
															contains_list[| i].yy=yy+contains_list[| i].tile_y_offset
															contains_list[| i].ttx=ttx
															contains_list[| i].tty=tty
													
														}
				//sm(My_Island_Tiles_List[|i])
			}
		}*/
	}
}