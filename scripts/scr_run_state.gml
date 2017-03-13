///scr_run_state

if (state == scr_run_state and !obj_input.run_key and running == true) {
     obj_bebu.spd = WALK_SPD;
    running = false;
    state = scr_walk_state;
}

if(obj_input.roll_key and obj_player_stats.stamina >= ROLL_COST) {
    image_index = 0;
    state = scr_roll_state;
    obj_player_stats.stamina -= ROLL_COST;
    //time before the player is able to roll again
    obj_player_stats.alarm[0] = room_speed/1.85;
}

if (place_meeting(x, y, obj_par_ladder)) {
    
    image_index = 0;
    obj_bebu.sight = 1000;
    ladder = true;
    state = scr_climb_state;
    
}

// get direction
dir = point_direction(0, 0, obj_input.lxaxis, obj_input.lyaxis);

// get the length
if (obj_input.lxaxis == 0 and obj_input.lyaxis == 0) {
    len = 0;
}else {
    len = RUN_SPD;
    
    scr_get_face();
}

// get the hspd and vspd
hspd = lengthdir_x(len, dir);
vspd =  lengthdir_y(len, dir);

// move
phy_position_x += hspd;
phy_position_y += vspd;

// control the sprite
if (len == 0)
{
    image_speed = .1;
        
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_idle_right;
    break;
    
    case UP:
    sprite_index = spr_player_idle_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_idle_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_idle_down;
    break; 
        
        }
        
} else {
    
    image_speed = .2;
    
    switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_run_right;
    break;
    
    case UP:
    sprite_index = spr_player_run_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_run_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_run_down;
    break;
    
    }
}

