///scr_aim_state_2

//get the direction of the player
dir = face*90;

scr_get_face();

switch (face) {
    
    case DOWN:
        obj_player_wand.depth = -12;
        sprite_index = spr_player_aim_down;
        break;

    case UP:
        obj_player_wand.depth = -8;
        sprite_index = spr_player_aim_up;
        break;
        
    case LEFT:
        obj_player_wand.depth = -12;
        sprite_index = spr_player_aim_left;
        break;
        
    case RIGHT:
        obj_player_wand.depth = -11;
        sprite_index = spr_player_aim_right;
        break;        
}

scr_aim_key_released();
