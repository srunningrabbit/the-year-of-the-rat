// If more levels, if statement checking which room curently in to know next spawn location
if(room == room0){
	room_goto(room1);
	obj_player.x = 5;
	obj_player.y = 512;
}
else if(room == room1){ //If more levels, 2 room managers per room, must check general location too
	room_goto(room0);
	obj_player.x = 2010;
	obj_player.y = 512;
}