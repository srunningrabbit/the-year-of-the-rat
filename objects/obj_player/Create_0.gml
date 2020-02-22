/// Init
audio_play_sound(snd_background1, 1, true);

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
movespd = 1;
jumping = false;

// Health vars
hp = 50;
max_hp = 50;

// Sprite array
sprite[RIGHT, MOVE] = spr_player_walk_R;
sprite[LEFT, MOVE] = spr_player_walk_L;
sprite[UP_RIGHT_U, MOVE] = spr_player_jump_R_U;
sprite[UP_RIGHT_D, MOVE] = spr_player_jump_R_D;
sprite[UP_LEFT_U, MOVE] = spr_player_jump_L_U;
sprite[UP_LEFT_D, MOVE] = spr_player_jump_L_D;
//sprite[DOWN_RIGHT, MOVE] = spr_player_squat_r;
//sprite[DOWN_LEFT, MOVE] = spr_player_squat_l;