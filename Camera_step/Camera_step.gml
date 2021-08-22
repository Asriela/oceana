function Camera_step()
{
	//if View_X_Move_Speed>0
//	show_message(View_X_Move_Speed)
	View_X+=View_X_Move_Speed;
	View_Y+=View_Y_Move_Speed;
	Expansion_View_X=View_X+View_Width/2-Expansion_View_Width/2;
	Expansion_View_Y=View_Y+View_Height/2-Expansion_View_Height/2;
	View_Width_X =View_X+View_Width;
	View_Height_Y=View_Y+View_Height;
}