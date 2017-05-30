///scr_aim_state

obj_bebu.sight = 3;

if (obj_player_stats.hp <=0)
{
    image_index = 0;
    image_speed = .3;
    alive = false;
    state = scr_death_state;
}
 

// get direction
dir = point_direction(0, 0, obj_input.rxaxis, obj_input.ryaxis);

// turn player
if (obj_input.rxaxis == 0 and obj_input.ryaxis == 0) {
    len = 0;
}else {
    scr_get_face();
}

// control sprite   
switch (face) {
    
        case DOWN:
            sprite_index = spr_player_aim_down;
            break;

        case UP:
            sprite_index = spr_player_aim_up;
            break;
        
        case LEFT:
            sprite_index = spr_player_aim_left;
            break;
        
        case RIGHT:
            sprite_index = spr_player_aim_right;
            break;        
    }
 
// back to walk state   
scr_aim_key_released();    


