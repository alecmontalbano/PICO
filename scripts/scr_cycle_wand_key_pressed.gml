///scr_cycle_wand_key_pressed


if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == false and obj_player.quillacquired == false and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 0) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
    
    state = wandstate[obj_player_stats.wand_num];
    sprite_index = wandsprite[obj_player_stats.wand_num];
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == false and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 1) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
    
    state = wandstate[obj_player_stats.wand_num];
    sprite_index = wandsprite[obj_player_stats.wand_num];
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == true and obj_player.palmacquired == false) {
      if (obj_player_stats.wand_num >= 2) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
    
    state = wandstate[obj_player_stats.wand_num];
    sprite_index = wandsprite[obj_player_stats.wand_num];
}

if (obj_input.cycle_wand_key and obj_player.casteracquired == true and obj_player.coilacquired == true and obj_player.quillacquired == true and obj_player.palmacquired == true) {
      if (obj_player_stats.wand_num >= 3) {
        obj_player_stats.wand_num = 0;
    } else {
        obj_player_stats.wand_num = obj_player_stats.wand_num+1;
    }
    
    state = wandstate[obj_player_stats.wand_num];
    sprite_index = wandsprite[obj_player_stats.wand_num];
}
