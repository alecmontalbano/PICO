///scr_cycle_wand_key_pressed
if (obj_input.cycle_wand_key) {
    
    if (wand_num >= 3) {
        wand_num = 0;
    } else {
        wand_num = wand_num+1;
    }
    
    state = wandstate[wand_num];
    sprite_index = wandsprite[wand_num];
}
