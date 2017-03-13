///scr_aim_key_pressed

if (aiming = false and obj_input.aim_key) {
    image_index = 0;
    
    with(obj_player_wand) {
        x = obj_player.x;
        y = obj_player.y+3;
        visible = true;
    }
    
    aiming = true;
    state = scr_aim_state;
}


