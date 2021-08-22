/// @description position_get_y(position)
/// @param position
function position_get_y(argument0) {
	/*
	 * Gives the y-coordinate of a position.
	 *
	 * position: The position created by "position_create".
	 *
	 * Returns: The y-coordinate of the position
	*/
	return (argument0 mod 10000);



}
