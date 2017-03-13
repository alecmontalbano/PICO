///scr_wand_inactive_state

if (obj_input.cycle_wand_key) {
      if (wand_num >= 3) {
        wand_num = 0;
    } else {
        wand_num = wand_num+1;
    }
}

if (obj_input.aim_key and wandactive = false) {
    
    image_index = 0;
    wandactive = true;
    
    state = wandstate[wand_num];
    sprite_index = wandsprite[wand_num];
    
} 


    
