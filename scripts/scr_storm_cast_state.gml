///scr_storm_cast_state()
if (obj_player_stats.magic >= 10) {

image_speed = .4;

switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_storm_cast_right;
    break;
    
    case UP:
    sprite_index = spr_player_storm_cast_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_storm_cast_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_storm_cast_down;
    break; 
        
}
    
if (image_index >= 15) {
        image_index = 0;
        //flash effect
        instance_create(x, y, obj_storm_flash_effect);
        //deplete magic
        obj_player_stats.magic = obj_player_stats.magic - 10;
        obj_player_stats.magicprc = obj_player_stats.magicprc - 100;
        state = scr_storm_state;
}
    
    //back to walk state
    if (!obj_input.special_key and specialactive == true) {
        image_index = 0;
        specialactive = false;
        hurtable = false;
        state = scr_walk_state;
    
    }
} else {
    image_index = 0;
    image_speed = .1;
    specialactive = false;
    hurtable = false;
    state = scr_walk_state;
}
