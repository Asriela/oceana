function In_Main()
{
enum islandMarker
{
	island_level,
	tx,
	ty,
	xx,
	yy,
	island_created,
	island_type
}
enum tileProperty
{
	tileName,
	leastTiles,
	mostTiles
}
enum tileType
{
	island_type,
	beach,
	grass,
	rock,
	lava,
	volcano,
	seabushes,
	shallows
	
	
}

enum directionType
{
	up,
	down,
	left,
	right
}

enum gameState
{
	MAIN,
	BOOTUP,
	MENU
}

globalvar Center_View_x,Center_View_y,Island_gx,Island_gy,Island_Grid,Move_Island_Mode,Shore_Tiles_List,Action_Move_Island_Pressed,Move_Aim_X,Move_Aim_Y,Grid_Center_X,Grid_Center_Y,Island_Moving,Island_Move_Speed,Island_Move_Complete,Total_Tile_Types,My_Island_Tiles_List,Shrine_Tile,Mouse_xx,Mouse_yy,Grid_Height,Grid_Width,Over_Tile,Action_Left_Pressed,View_Height,View_Width,Island_Blueprint_Array,Player_Island_Level,GAME_STATE,Tile_Size_Multiplier,Time_Lapse,contains_list_count,Tile_Grid,Held_Tile,Island_Marker_Array,View_X,View_Y,Tile_List,Island_Marker_List,World_Center_X,World_Center_Y,Grid_End_X,Grid_End_Y,Grid_Start_X,Grid_Start_Y,Tile_Width,Tile_Height;
Center_View_x=room_width/2
Center_View_y=room_height/2
Island_gx=0
Island_gy=0
Move_Island_Mode=0
Time_Lapse=0
Island_Grid=ds_grid_create(30,30)
ds_grid_clear(Island_Grid,0)
Shore_Tiles_List=ds_list_create()
Action_Move_Island_Pressed=-1
Move_Aim_X=0
Move_Aim_Y=0
Island_Move_Speed=0
Island_Moving=0
Island_Move_Complete=1
Total_Tile_Types=7
GAME_STATE=gameState.BOOTUP;
World_Center_X=room_width/2;
World_Center_Y=room_height/2;
Tile_Size_Multiplier=2;
Tile_Width = 39*Tile_Size_Multiplier;
Tile_Height = 27*Tile_Size_Multiplier;
Player_Island_Level=1
My_Island_Tiles_List=ds_list_create()
Over_Tile=-1


randomize()

first_character=1
Move_Locked=0
Expansion_View_X=0;
Expansion_View_Y=0;

Tile_Grid=ds_grid_create(2000,2000)
Grid_Width=ds_grid_width(Tile_Grid)
Grid_Height=ds_grid_height(Tile_Grid)

Grid_Start_X=-(ds_grid_width(Tile_Grid)/2)*Tile_Width;
Grid_Start_Y=-(ds_grid_height(Tile_Grid)/2)*Tile_Height;
Grid_End_X=(ds_grid_width(Tile_Grid)/2)*Tile_Width;
Grid_End_Y=(ds_grid_height(Tile_Grid)/2)*Tile_Height;
Grid_Center_X=Grid_Width/2
Grid_Center_Y=Grid_Height/2

View_Width=room_width
View_Height=room_height

View_X=-View_Width/2
View_Y=-View_Height/2

Expansion_View_Width=	room_width+4*Tile_Width;
Expansion_View_Height=	room_height+4*Tile_Height;

View_X_Move_Speed=0
View_Y_Move_Speed=0
Shrine_Tile=-10
//Grid_Start_X+tx*Tile_Width

	
tile_x_distance=0
tile_y_distance=0
contains_list_count=0

view_x_move_speed_limit=8
view_y_move_speed_limit=8

view_x_friction=0.2
view_y_friction=0.2
flag=0
tx=0
ty=0
//Island_Marker_Array[0]=0;

//tile_object_constructor add  it to the list 
Held_Tile=noone	
character=noone
on=false
move_island=0
}