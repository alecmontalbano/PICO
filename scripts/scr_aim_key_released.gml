///scr_aim_key_released

if (aiming = true and !obj_input.aim_key) {
    image_index = 0;

        with(obj_player_wand) {
            visible = false;
        }

    
    canattack = true;
    aiming = false;
    state = scr_walk_state;
}
