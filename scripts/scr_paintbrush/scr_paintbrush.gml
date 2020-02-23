// Click and drag to paint a path
if (mouse_check_button_pressed(mb_left)) {
	obj_paintbrush.dragging = true;
}
else if (not mouse_check_button(mb_left)) {
	obj_paintbrush.dragging = false;	
}

if (obj_paintbrush.dragging) {
	// Sets x and y to the mouse location
	x = camera_get_view_x(view_camera[0]); 
	y = camera_get_view_y(view_camera[0]);
	//x = mouse_x;
	//y = mouse_y;
	instance_create_layer(x, y, "Instances", obj_paint);
}