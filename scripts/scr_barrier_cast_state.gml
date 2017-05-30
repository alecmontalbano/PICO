///scr_barrier_cast_state()
if (obj_player_stats.magic > 1) {

image_speed = .45;

switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_barrier_cast_right;
    break;
    
    case UP:
    sprite_index = spr_player_barrier_cast_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_barrier_cast_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_barrier_cast_down;
    break; 
        
}
    
if (image_index >= 7) {
        hurtable = false;
        state = scr_barrier_state;
}
    
    //back to walk state
    if (!obj_input.special_key and specialactive == true) {
        image_index = 0;
        specialactive = false;
        state = scr_walk_state;
    }
} else {
    image_index = 0;
    specialactive = false;
    state = scr_walk_state;
}
