///scr_special_key_released()
if (!obj_input.special_key and specialactive == true) {
    image_index = 0;
    specialactive = false;
    state = scr_walk_state;
}
