/// Init
state = scr_move_state;

face = RIGHT;
previousFace = RIGHT;
dir = RIGHT;

// Movement vars
grav = 0.3;
hsp = 0;
vsp = 0;
hsp_fraction = 0;
vsp_fraction = 0;
jumpspd = 6;
movespd = 1.5;
jumping = false;
prev_sprite_index = spr_player_idle_R;

// Health vars
hp = 50;
max_hp = 50;

// Sprite array
sprite[RIGHT, IDLE] = spr_player_idle_R;
sprite[LEFT, IDLE] = spr_player_idle_L;
sprite[RIGHT, MOVE] = spr_player_walk_R;
sprite[LEFT, MOVE] = spr_player_walk_L;
sprite[UP_RIGHT_U, MOVE] = spr_player_jump_R_U;
sprite[UP_LEFT_U, MOVE] = spr_player_jump_L_U;