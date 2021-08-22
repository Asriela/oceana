function Maintain_Variables_step()
{
	Mouse_xx=mouse_x-View_X
	Mouse_yy=mouse_y-View_Y
	
	x_mouse_dif=mouse_x-Center_View_x
	y_mouse_dif=mouse_y-Center_View_y
	Island_gx=(x_mouse_dif/Tile_Width)
	Island_gy=(y_mouse_dif/Tile_Height)
}
