image_xscale = .35
image_yscale = .3

x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;

if(obj_input.map_key){
	//canBeClosed = true;
	draw_self();
}
//draw_sprite(spr_level1Map, 0, v_x, v_y);