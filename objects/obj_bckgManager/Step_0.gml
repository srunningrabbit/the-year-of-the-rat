var layer_id1 = layer_get_id("Background");

layer_x(layer_id1, lerp(0, camera_get_view_x(obj_view.camera),.65));
layer_y(layer_id1, lerp(0, camera_get_view_y(obj_view.camera),.6));