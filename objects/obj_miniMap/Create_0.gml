//x = camera_get_view_x(obj_view.camera) + camera_get_view_width(obj_view.camera)/2;
//y = camera_get_view_y(obj_view.camera) + camera_get_view_height(obj_view.camera)/2;

//x = obj_view.x + display_get_width()/2;
//y = obj_view.y + display_get_height()/2;

//var p_x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2;
//var p_y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2;
//draw_sprite(sprite_index, image_index, p_x, p_y);

//object_set_visible(obj_miniMap, true);

display_width = camera_get_view_width(view_camera[0])*(1/3000);
display_height = camera_get_view_height(view_camera[0])*(1/2500);
canBeClosed = false;

