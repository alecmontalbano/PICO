///scr_speed_cast_state()
if (obj_player_stats.magic >=5) {

image_speed = .35;

switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_speed_cast_right;
    break;
    
    case UP:
    sprite_index = spr_player_speed_cast_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_speed_cast_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_speed_cast_down;
    break; 
        
}
    
if (image_index >= 16) {
        //deplete magic
        obj_player_stats.magic = obj_player_stats.magic - 5;
        obj_player_stats.magicprc = obj_player_stats.magicprc - 50;
        
        hurtable = false;
        alarm[0] = room_speed*5;
        state = scr_speed_state;
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
