if view_current == 0
   {
   var xx = camera_get_view_x(view_camera[0]);
   var yy = camera_get_view_y(view_camera[0]);
   draw_sprite_tiled(spr_background1,0,xx/2,yy);
}