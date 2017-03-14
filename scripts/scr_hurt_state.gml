///scr_hurt_state

if (obj_player_stats.hp <=0 and alive == true)
{
    image_index = 0;
    image_speed = .3;
    alive = false;
    state = scr_death_state;
}
 
switch (face) {
    
    case RIGHT:
    sprite_index = spr_player_hurt_right;
    break;
    
    case UP:
    sprite_index = spr_player_hurt_up;
    break;
    
    case LEFT: 
    sprite_index = spr_player_hurt_left;
    break;
    
    case DOWN:
    sprite_index = spr_player_hurt_down;
    break;

}

// back to walk state
if (image_index >= 1) {
    image_index = 0;
    state = scr_walk_state;
}
