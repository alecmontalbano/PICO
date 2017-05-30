///scr_storm_state()
image_speed = .35; 

switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_storm_attack_right;
    break;
    
    case UP:
    sprite_index = spr_player_storm_attack_up;
    break;  
        
    case LEFT:
    sprite_index = spr_player_storm_attack_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_storm_attack_down;
    break; 
        
}

if (image_index >= 4 and image_index <=11) {
    
    var damage = instance_create(x, y, obj_storm_damage); 
    damage.creator = id;
    
}    

if (image_index >= 14) {   
    hurtable = true;
    image_speed = .1;
    specialactive = false;
    state = scr_walk_state;
}

