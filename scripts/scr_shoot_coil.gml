///scr_shoot_coil()

if (obj_input.shoot_key and shooting == false) {
    shooting = true;
    image_index = 0;
    image_speed = .1;
    state = scr_wand_coil_extend_state;
    
}


