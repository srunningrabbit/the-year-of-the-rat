image_xscale = .35
image_yscale = .3

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

if(obj_input.map_key and canClick){
	if (not isOpen){
		isOpen = true;
	} else {
		isOpen = false;
	}
	canClick = false;
	alarm[0] = room_speed/4;
}

if(isOpen){
	draw_self();
}
	
	//for (i = 0; i < ds_grid_width(visited); i += 1){
	//	for (j = 0; j < ds_grid_height(visited); j += 1){
	//		if ds_grid_get(visited, i, j) = true{
	//			draw_circle(j,i,0,c_black);
	//			//instance_create(i * 32, j * 32, obj_Wall);
	//		}
   //   }
   //}
	
//	for(each(visited, ds_type_array); as("y_val","x_row"); iterate()) {
//		for(each(_val(), ds_type_array); as("x_val","isVisited"); iterate()){
//			if(){
//				draw_circle(x_val,y_val,0,c_black);
//			}
//		}
//    // _key() - returns 0, 1, 2...
		
//	}
	

//draw_sprite(spr_level1Map, 0, v_x, v_y);