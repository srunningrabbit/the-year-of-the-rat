if (bbox_left <= obj_vine.bbox_right) {
	x = obj_vine.bbox_right;
} else if (bbox_right >= obj_vine.bbox_left) {
	x = obj_vine.bbox_left - sprite_width;
}